// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "./GoldilocksField.sol";
import "./FriFolding.sol";
import "./MerkleVerifier.sol";
import "./FriDeep.sol";
import "./KeccakTranscript.sol";

/**
 * FriVerifier — the per-query FRI layer loop, matching p3's `verify_query`.
 *
 * Starting from the query's initial evaluation (the reduced opening at the max
 * height), for each commit-phase layer we:
 *   1. reconstruct the arity-2 evals row — the running eval goes at position
 *      `index & 1`, the proof's sibling fills the other slot;
 *   2. Merkle-check that row (flattened to base) at the PARENT index and the
 *      folded height, against the layer's committed root;
 *   3. fold the row with the layer's challenge beta to get the parent eval;
 *   4. descend: index = parent, height -= 1.
 * Returns the final folded evaluation (checked against the final polynomial by
 * the caller). Reduced-opening roll-ins at intermediate heights (the DEEP part)
 * are added when the PCS layer wires them.
 */
library FriVerifier {
    using KeccakTranscript for KeccakTranscript.T;

    // ---- top-level proof (single-matrix, single opening point) ----
    struct QueryProof {
        uint64[] row; // opened trace row (base) at the query index
        bytes32[] inProof; // input Merkle path
        FriFolding.E[] sibs; // commit-phase sibling per round
        bytes32[][] cpProofs; // commit-phase Merkle path per round
    }
    struct FriProof {
        bytes32 commit; // input commitment
        FriFolding.E[] evals; // claimed p(zeta) per column
        FriFolding.E[] finalPoly; // final polynomial coefficients
        bytes32[] roots; // commit-phase roots (one per round)
        uint256 logMax; // log2 of the max (input LDE) domain
        QueryProof[] queries;
    }

    /// Verify a FRI proof end-to-end: re-derive all Fiat-Shamir challenges from
    /// the transcript, then for each query compute the DEEP reduced opening, run
    /// the fold/Merkle loop, and check `finalPoly(x) == foldedEval`. Reverts on
    /// any failure. This is the whole verifier for a single-matrix opening.
    function verifyFri(FriProof memory pf) internal pure {
        KeccakTranscript.T memory t = KeccakTranscript.init();
        t.observeDigest(pf.commit);
        FriFolding.E memory zeta;
        (zeta.c0, zeta.c1) = t.sampleExt();
        _observeExt(t, pf.evals);
        FriFolding.E memory alpha;
        (alpha.c0, alpha.c1) = t.sampleExt();

        uint256 rounds = pf.roots.length;
        FriFolding.E[] memory betas = new FriFolding.E[](rounds);
        for (uint256 r = 0; r < rounds; r++) {
            t.observeDigest(pf.roots[r]);
            (betas[r].c0, betas[r].c1) = t.sampleExt();
        }
        _observeExt(t, pf.finalPoly);
        for (uint256 r = 0; r < rounds; r++) {
            t.observe(1); // log_arity = 1, bound into the transcript
        }
        // (proof-of-work bits are 0 in this config → no witness check)

        for (uint256 q = 0; q < pf.queries.length; q++) {
            uint256 index = t.sampleBits(pf.logMax);
            _verifyQueryFull(pf, betas, zeta, alpha, index, q);
        }
    }

    function _observeExt(KeccakTranscript.T memory t, FriFolding.E[] memory xs) private pure {
        for (uint256 i = 0; i < xs.length; i++) {
            t.observe(uint64(xs[i].c0));
            t.observe(uint64(xs[i].c1));
        }
    }

    function _verifyQueryFull(
        FriProof memory pf,
        FriFolding.E[] memory betas,
        FriFolding.E memory zeta,
        FriFolding.E memory alpha,
        uint256 index,
        uint256 q
    ) private pure {
        QueryProof memory qp = pf.queries[q];
        require(
            MerkleVerifier.verifyOpening(pf.commit, index, qp.row, qp.inProof),
            "FRI: bad input opening"
        );
        FriFolding.E memory ro = _reducedOpening(pf, qp, zeta, alpha, index);
        FriFolding.E memory folded = verifyQuery(index, pf.logMax, ro, _buildLayers(pf, betas, qp));
        _finalCheck(pf, folded, index);
    }

    /// open_input for one matrix/point: the DEEP reduced opening at the query.
    function _reducedOpening(
        FriProof memory pf,
        QueryProof memory qp,
        FriFolding.E memory zeta,
        FriFolding.E memory alpha,
        uint256 index
    ) private pure returns (FriFolding.E memory ro) {
        uint256 x = FriDeep.reducedOpeningPoint(index, pf.logMax, pf.logMax);
        FriFolding.E[] memory zs = new FriFolding.E[](1);
        zs[0] = zeta;
        (ro,) = FriDeep.reduceRow(alpha, FriFolding.E(1, 0), x, qp.row, zs, pf.evals);
    }

    function _buildLayers(FriProof memory pf, FriFolding.E[] memory betas, QueryProof memory qp)
        private pure returns (Layer[] memory layers)
    {
        layers = new Layer[](pf.roots.length);
        for (uint256 r = 0; r < pf.roots.length; r++) {
            layers[r] = Layer(
                betas[r].c0, betas[r].c1, pf.roots[r], qp.sibs[r].c0, qp.sibs[r].c1, qp.cpProofs[r]
            );
        }
    }

    function _finalCheck(FriProof memory pf, FriFolding.E memory folded, uint256 index) private pure {
        FriFolding.E memory fe = hornerEval(pf.finalPoly, finalX(index >> pf.roots.length, pf.logMax));
        require(fe.c0 == folded.c0 && fe.c1 == folded.c1, "FRI: final poly mismatch");
    }

    struct Layer {
        uint256 bc0; // beta
        uint256 bc1;
        bytes32 root; // commit-phase commitment for this layer
        uint256 sc0; // sibling value (the arity-2 partner of the running eval)
        uint256 sc1;
        bytes32[] proof; // Merkle authentication path
    }

    /// The final-domain evaluation point: x = g(logMax)^reverseBits(domainIndex, logMax).
    function finalX(uint256 domainIndex, uint256 logMax) internal pure returns (uint256) {
        return GoldilocksField.exp(
            FriFolding.twoAdicGen(logMax), FriFolding.reverseBits(domainIndex, logMax)
        );
    }

    /// Evaluate final_poly (coeffs c0,c1,… ascending) at base point x (Horner).
    function hornerEval(FriFolding.E[] memory poly, uint256 x)
        internal pure returns (FriFolding.E memory acc)
    {
        for (uint256 i = poly.length; i > 0; i--) {
            (acc.c0, acc.c1) = GoldilocksField.extScale(x, acc.c0, acc.c1); // acc *= x
            acc.c0 = GoldilocksField.add(acc.c0, poly[i - 1].c0); // + coeff
            acc.c1 = GoldilocksField.add(acc.c1, poly[i - 1].c1);
        }
    }

    function verifyQuery(
        uint256 startIndex,
        uint256 logMaxHeight,
        FriFolding.E memory initialEval,
        Layer[] memory layers
    ) internal pure returns (FriFolding.E memory eval) {
        eval = initialEval;
        uint256 index = startIndex;
        uint256 logH = logMaxHeight;

        for (uint256 r = 0; r < layers.length; r++) {
            uint256 parent = index >> 1;
            uint256 logFolded = logH - 1;

            // reconstruct the arity-2 row: running eval at index&1, sibling elsewhere
            FriFolding.E memory s = FriFolding.E(layers[r].sc0, layers[r].sc1);
            FriFolding.E memory e0;
            FriFolding.E memory e1;
            if (index & 1 == 0) {
                (e0, e1) = (eval, s);
            } else {
                (e0, e1) = (s, eval);
            }

            // Merkle-check the row (flattened to base coefficients) at the parent
            uint64[] memory leaf = new uint64[](4);
            leaf[0] = uint64(e0.c0);
            leaf[1] = uint64(e0.c1);
            leaf[2] = uint64(e1.c0);
            leaf[3] = uint64(e1.c1);
            require(
                MerkleVerifier.verifyOpening(layers[r].root, parent, leaf, layers[r].proof),
                "FRI: bad commit-phase opening"
            );

            // fold to the parent evaluation
            eval = FriFolding.fold2(parent, logFolded, FriFolding.E(layers[r].bc0, layers[r].bc1), e0, e1);
            index = parent;
            logH = logFolded;
        }
    }
}
