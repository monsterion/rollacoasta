// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "./GoldilocksField.sol";
import "./FriFolding.sol";
import "./MerkleVerifier.sol";
import "./FriDeep.sol";
import "./FriVerifier.sol";
import "./ConstraintEval.sol";
import "./KeccakTranscript.sol";

/**
 * StarkVerifier — the top-level uni-stark verifier, assembling every component
 * into an end-to-end check of a real STARK proof (trace + quotient). It:
 *   1. re-derives the transcript: instance data → trace commit → public values →
 *      constraint challenge `alphaC` → quotient commit → OOD point `zeta` →
 *      opened values → FRI challenge `alphaFri` → folding challenges `betas`;
 *   2. per query: the multi-matrix DEEP reduced opening (trace opened at zeta and
 *      zeta·g, quotient chunks at zeta, both Merkle-authenticated), the FRI
 *      fold/Merkle loop, and the final-poly check;
 *   3. the constraint check: fold the AIR constraints at the opened row values
 *      and verify `foldedConstraints · invVanishing == recomposedQuotient`.
 *
 * The AIR-specific piece is `_foldConstraints` (here: the SquareChain AIR, the
 * differential-test instance). The round AIR's is codegen'd the same way.
 */
library StarkVerifier {
    using KeccakTranscript for KeccakTranscript.T;

    struct Query {
        uint64[] traceRow; // opened trace row (base)
        bytes32[] tracePath; // input Merkle path (trace)
        uint64[] quotRow; // opened quotient chunk rows, concatenated (base)
        bytes32[] quotPath; // input Merkle path (quotient batch)
        FriFolding.E[] sibs; // commit-phase sibling per round
        bytes32[][] cpPaths; // commit-phase path per round
    }

    struct StarkProof {
        uint256 degreeBits;
        uint256 logBlowup;
        uint64[] pub; // public values (base)
        bytes32 traceCommit;
        bytes32 quotCommit;
        FriFolding.E[] traceLocal; // width
        FriFolding.E[] traceNext; // width
        FriFolding.E[2][] chunks; // quotient chunks (numChunks × 2)
        bytes32[] roots; // commit-phase roots
        uint64[] commitPow; // per-round proof-of-work witnesses
        uint64 queryPow; // query proof-of-work witness
        FriFolding.E[] finalPoly;
        Query[] queries;
    }

    uint256 internal constant POW_BITS = 16;

    struct Chals {
        FriFolding.E alphaC; // constraint-combination challenge
        FriFolding.E zeta; // OOD point
        FriFolding.E alphaFri; // FRI batch challenge
        FriFolding.E[] betas; // folding challenges
        uint256[] indices; // FRI query indices (sampled once, in transcript order)
    }

    function verifyStark(StarkProof memory pf) internal pure {
        Chals memory ch = verifyOpenings(pf);
        _checkConstraints(pf, ch); // SquareChain (test AIR)
    }

    /// The AIR-agnostic part: re-derive challenges, then verify every query's
    /// multi-matrix opening + FRI. Returns the challenges so the AIR-specific
    /// constraint check (e.g. TickStarkVerifier) can run against the same zeta/alpha.
    function verifyOpenings(StarkProof memory pf) public pure returns (Chals memory ch) {
        ch = _transcript(pf);
        uint256 logGM = pf.degreeBits + pf.logBlowup;
        for (uint256 q = 0; q < pf.queries.length; q++) {
            _verifyQuery(pf, ch, logGM, q, ch.indices[q]);
        }
    }

    // ---- 1. transcript: re-derive every challenge ----
    function _transcript(StarkProof memory pf) private pure returns (Chals memory ch) {
        KeccakTranscript.T memory t = KeccakTranscript.init();
        t.observe(uint64(pf.degreeBits));
        t.observe(uint64(pf.degreeBits)); // base_degree_bits (non-zk)
        t.observe(0); // preprocessed_width
        t.observeDigest(pf.traceCommit);
        for (uint256 i = 0; i < pf.pub.length; i++) t.observe(pf.pub[i]);
        (ch.alphaC.c0, ch.alphaC.c1) = t.sampleExt();
        t.observeDigest(pf.quotCommit);
        (ch.zeta.c0, ch.zeta.c1) = t.sampleExt();
        // pcs observes the opened values (trace @ zeta, @ zeta_next, then chunks)
        _obsExt(t, pf.traceLocal);
        _obsExt(t, pf.traceNext);
        for (uint256 i = 0; i < pf.chunks.length; i++) {
            t.observe(uint64(pf.chunks[i][0].c0));
            t.observe(uint64(pf.chunks[i][0].c1));
            t.observe(uint64(pf.chunks[i][1].c0));
            t.observe(uint64(pf.chunks[i][1].c1));
        }
        (ch.alphaFri.c0, ch.alphaFri.c1) = t.sampleExt();
        ch.betas = new FriFolding.E[](pf.roots.length);
        for (uint256 r = 0; r < pf.roots.length; r++) {
            t.observeDigest(pf.roots[r]);
            t.observe(pf.commitPow[r]); // check_witness: observe PoW witness…
            require(t.sampleBits(POW_BITS) == 0, "commit pow"); // …then grinding check
            (ch.betas[r].c0, ch.betas[r].c1) = t.sampleExt();
        }
        _obsExt(t, pf.finalPoly);
        for (uint256 r = 0; r < pf.roots.length; r++) t.observe(1); // log_arity
        t.observe(pf.queryPow);
        require(t.sampleBits(POW_BITS) == 0, "query pow");
        // Sample ALL query indices here, once, in transcript order. (Previously
        // each query re-ran the whole transcript via `_replayToQueries` — O(queries
        // × transcript-size), which is catastrophic at real query counts. The
        // challenger is stateful, so sampling them sequentially from this one
        // instance is exactly p3's order.)
        uint256 logGM = pf.degreeBits + pf.logBlowup;
        ch.indices = new uint256[](pf.queries.length);
        for (uint256 q = 0; q < pf.queries.length; q++) {
            ch.indices[q] = t.sampleBits(logGM);
        }
    }

    function _obsExt(KeccakTranscript.T memory t, FriFolding.E[] memory xs) private pure {
        for (uint256 i = 0; i < xs.length; i++) {
            t.observe(uint64(xs[i].c0));
            t.observe(uint64(xs[i].c1));
        }
    }

    // ---- 2. per-query FRI verification (multi-matrix open_input) ----
    function _verifyQuery(StarkProof memory pf, Chals memory ch, uint256 logGM, uint256 q, uint256 index)
        private pure
    {
        Query memory qp = pf.queries[q];
        // authenticate the input openings
        require(MerkleVerifier.verifyOpening(pf.traceCommit, index, qp.traceRow, qp.tracePath), "trace open");
        require(MerkleVerifier.verifyOpening(pf.quotCommit, index, qp.quotRow, qp.quotPath), "quot open");
        // multi-matrix DEEP reduced opening
        FriFolding.E memory ro = _reducedOpening(pf, ch, qp, index, logGM);
        // FRI fold/Merkle loop
        FriVerifier.Layer[] memory layers = new FriVerifier.Layer[](pf.roots.length);
        for (uint256 r = 0; r < pf.roots.length; r++) {
            layers[r] = FriVerifier.Layer(
                ch.betas[r].c0, ch.betas[r].c1, pf.roots[r], qp.sibs[r].c0, qp.sibs[r].c1, qp.cpPaths[r]
            );
        }
        FriFolding.E memory folded = FriVerifier.verifyQuery(index, logGM, ro, layers);
        // final poly check
        FriFolding.E memory fe =
            FriVerifier.hornerEval(pf.finalPoly, FriVerifier.finalX(index >> pf.roots.length, logGM));
        require(fe.c0 == folded.c0 && fe.c1 == folded.c1, "final poly");
    }

    function _reducedOpening(StarkProof memory pf, Chals memory ch, Query memory qp, uint256 index, uint256 logGM)
        private pure returns (FriFolding.E memory ro)
    {
        uint256 x = FriDeep.reducedOpeningPoint(index, logGM, logGM);
        // trace: opened at [zeta, zeta_next], width columns
        FriFolding.E memory zetaNext = _zetaNext(ch.zeta, pf.degreeBits);
        FriFolding.E[] memory zs2 = new FriFolding.E[](2);
        zs2[0] = ch.zeta;
        zs2[1] = zetaNext;
        FriFolding.E[] memory pAtZ = new FriFolding.E[](2 * pf.traceLocal.length);
        for (uint256 c = 0; c < pf.traceLocal.length; c++) pAtZ[c] = pf.traceLocal[c];
        for (uint256 c = 0; c < pf.traceNext.length; c++) pAtZ[pf.traceLocal.length + c] = pf.traceNext[c];
        FriFolding.E memory ap;
        (ro, ap) = FriDeep.reduceRow(ch.alphaFri, FriFolding.E(1, 0), x, qp.traceRow, zs2, pAtZ);
        // quotient chunks: each opened at [zeta], 2 columns
        ro = _reduceQuotient(pf, ch, qp, x, ro, ap);
    }

    function _reduceQuotient(
        StarkProof memory pf, Chals memory ch, Query memory qp, uint256 x,
        FriFolding.E memory ro, FriFolding.E memory ap
    ) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory zs1 = new FriFolding.E[](1);
        zs1[0] = ch.zeta;
        for (uint256 k = 0; k < pf.chunks.length; k++) {
            uint64[] memory crow = new uint64[](2);
            crow[0] = qp.quotRow[2 * k];
            crow[1] = qp.quotRow[2 * k + 1];
            FriFolding.E[] memory cz = new FriFolding.E[](2);
            cz[0] = pf.chunks[k][0];
            cz[1] = pf.chunks[k][1];
            (FriFolding.E memory roc, FriFolding.E memory ap2) = FriDeep.reduceRow(ch.alphaFri, ap, x, crow, zs1, cz);
            ro.c0 = GoldilocksField.add(ro.c0, roc.c0);
            ro.c1 = GoldilocksField.add(ro.c1, roc.c1);
            ap = ap2;
        }
        return ro;
    }

    function _zetaNext(FriFolding.E memory zeta, uint256 degreeBits) private pure returns (FriFolding.E memory r) {
        uint256 g = FriFolding.twoAdicGen(degreeBits);
        (r.c0, r.c1) = GoldilocksField.extScale(g, zeta.c0, zeta.c1);
    }

    // ---- 3. constraint check (AIR-specific fold + quotient) ----
    function _checkConstraints(StarkProof memory pf, Chals memory ch) private pure {
        ConstraintEval.Sels memory s = ConstraintEval.selectors(ch.zeta, pf.degreeBits);
        FriFolding.E memory folded = _foldConstraints(pf, ch, s);
        FriFolding.E memory quotient = ConstraintEval.recomposeQuotient(ch.zeta, pf.degreeBits, pf.chunks);
        (uint256 m0, uint256 m1) =
            GoldilocksField.extMul(folded.c0, folded.c1, s.invVanishing.c0, s.invVanishing.c1);
        require(m0 == quotient.c0 && m1 == quotient.c1, "constraint mismatch");
    }

    /// SquareChain constraints: first(local-x0), transition(next-local^2-local), last(local-xn).
    function _foldConstraints(StarkProof memory pf, Chals memory ch, ConstraintEval.Sels memory s)
        private pure returns (FriFolding.E memory acc)
    {
        acc = ConstraintEval.fold(acc, ch.alphaC, _termFirst(pf, s));
        acc = ConstraintEval.fold(acc, ch.alphaC, _termTrans(pf, s));
        acc = ConstraintEval.fold(acc, ch.alphaC, _termLast(pf, s));
    }

    function _termFirst(StarkProof memory pf, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E memory local = pf.traceLocal[0];
        return _mul(s.isFirst, FriFolding.E(GoldilocksField.sub(local.c0, pf.pub[0]), local.c1));
    }

    function _termLast(StarkProof memory pf, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E memory local = pf.traceLocal[0];
        return _mul(s.isLast, FriFolding.E(GoldilocksField.sub(local.c0, pf.pub[1]), local.c1));
    }

    function _termTrans(StarkProof memory pf, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E memory local = pf.traceLocal[0];
        FriFolding.E memory next = pf.traceNext[0];
        FriFolding.E memory sq = _mul(local, local);
        FriFolding.E memory tr = FriFolding.E(
            GoldilocksField.sub(GoldilocksField.sub(next.c0, sq.c0), local.c0),
            GoldilocksField.sub(GoldilocksField.sub(next.c1, sq.c1), local.c1)
        );
        return _mul(s.isTransition, tr);
    }

    function _mul(FriFolding.E memory a, FriFolding.E memory b) private pure returns (FriFolding.E memory r) {
        (r.c0, r.c1) = GoldilocksField.extMul(a.c0, a.c1, b.c0, b.c1);
    }
}
