// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "./FriFolding.sol";
import "./StarkVerifier.sol";

/**
 * StarkProofCodec — parse a STARK proof from calldata bytes into the verifier's
 * struct, RANGE-CHECKING every field element `< p` (rejecting non-canonical
 * encodings, a classic verifier soundness hole). Big-endian layout; digests are
 * raw 32 bytes (not range-checked). See generate_full_stark.rs for the writer.
 */
library StarkProofCodec {
    uint256 internal constant P = 0xFFFFFFFF00000001; // Goldilocks

    function _u32(bytes calldata d, uint256 p) private pure returns (uint256 v, uint256) {
        v = (uint256(uint8(d[p])) << 24) | (uint256(uint8(d[p + 1])) << 16)
            | (uint256(uint8(d[p + 2])) << 8) | uint256(uint8(d[p + 3]));
        return (v, p + 4);
    }

    function _u64(bytes calldata d, uint256 p) private pure returns (uint64 v, uint256) {
        for (uint256 i = 0; i < 8; i++) v = (v << 8) | uint8(d[p + i]);
        require(v < P, "noncanonical"); // range-check field element
        return (v, p + 8);
    }

    function _dig(bytes calldata d, uint256 p) private pure returns (bytes32 v, uint256) {
        assembly { v := calldataload(add(d.offset, p)) }
        return (v, p + 32);
    }

    function _ef(bytes calldata d, uint256 p) private pure returns (FriFolding.E memory e, uint256) {
        uint64 c0;
        uint64 c1;
        (c0, p) = _u64(d, p);
        (c1, p) = _u64(d, p);
        return (FriFolding.E(c0, c1), p);
    }

    function parse(bytes calldata d) internal pure returns (StarkVerifier.StarkProof memory pf) {
        uint256 p = 0;
        uint256 n;
        (pf.degreeBits, p) = _u32(d, p);
        (pf.logBlowup, p) = _u32(d, p);
        (n, p) = _u32(d, p);
        pf.pub = new uint64[](n);
        for (uint256 i = 0; i < n; i++) (pf.pub[i], p) = _u64(d, p);
        (pf.traceCommit, p) = _dig(d, p);
        (pf.quotCommit, p) = _dig(d, p);
        p = _opened(d, p, pf);
        p = _fri(d, p, pf);
        (n, p) = _u32(d, p); // numQueries
        pf.queries = new StarkVerifier.Query[](n);
        uint256 width = pf.traceLocal.length;
        for (uint256 q = 0; q < n; q++) p = _query(d, p, pf, q, width);
    }

    function _opened(bytes calldata d, uint256 p, StarkVerifier.StarkProof memory pf) private pure returns (uint256) {
        uint256 w;
        (w, p) = _u32(d, p); // width
        pf.traceLocal = new FriFolding.E[](w);
        for (uint256 i = 0; i < w; i++) (pf.traceLocal[i], p) = _ef(d, p);
        pf.traceNext = new FriFolding.E[](w);
        for (uint256 i = 0; i < w; i++) (pf.traceNext[i], p) = _ef(d, p);
        uint256 nc;
        (nc, p) = _u32(d, p);
        pf.chunks = new FriFolding.E[2][](nc);
        for (uint256 i = 0; i < nc; i++) {
            (pf.chunks[i][0], p) = _ef(d, p);
            (pf.chunks[i][1], p) = _ef(d, p);
        }
        return p;
    }

    function _fri(bytes calldata d, uint256 p, StarkVerifier.StarkProof memory pf) private pure returns (uint256) {
        uint256 nr;
        (nr, p) = _u32(d, p);
        pf.roots = new bytes32[](nr);
        for (uint256 i = 0; i < nr; i++) (pf.roots[i], p) = _dig(d, p);
        pf.commitPow = new uint64[](nr);
        for (uint256 i = 0; i < nr; i++) (pf.commitPow[i], p) = _u64(d, p);
        (pf.queryPow, p) = _u64(d, p);
        uint256 nf;
        (nf, p) = _u32(d, p);
        pf.finalPoly = new FriFolding.E[](nf);
        for (uint256 i = 0; i < nf; i++) (pf.finalPoly[i], p) = _ef(d, p);
        return p;
    }

    function _query(bytes calldata d, uint256 p, StarkVerifier.StarkProof memory pf, uint256 q, uint256 width)
        private pure returns (uint256)
    {
        StarkVerifier.Query memory qp;
        uint256 nr = pf.roots.length;
        uint256 nchunks = pf.chunks.length;
        qp.traceRow = new uint64[](width);
        for (uint256 i = 0; i < width; i++) (qp.traceRow[i], p) = _u64(d, p);
        (qp.tracePath, p) = _digArr(d, p);
        qp.quotRow = new uint64[](nchunks * 2);
        for (uint256 i = 0; i < nchunks * 2; i++) (qp.quotRow[i], p) = _u64(d, p);
        (qp.quotPath, p) = _digArr(d, p);
        qp.sibs = new FriFolding.E[](nr);
        for (uint256 i = 0; i < nr; i++) (qp.sibs[i], p) = _ef(d, p);
        qp.cpPaths = new bytes32[][](nr);
        for (uint256 i = 0; i < nr; i++) (qp.cpPaths[i], p) = _digArr(d, p);
        pf.queries[q] = qp;
        return p;
    }

    function _digArr(bytes calldata d, uint256 p) private pure returns (bytes32[] memory a, uint256) {
        uint256 len;
        (len, p) = _u32(d, p);
        a = new bytes32[](len);
        for (uint256 i = 0; i < len; i++) (a[i], p) = _dig(d, p);
        return (a, p);
    }
}
