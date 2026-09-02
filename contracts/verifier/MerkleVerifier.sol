// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

/**
 * MerkleVerifier — MMCS opening verification for the STARK verifier, matching
 * p3's keccak256 `MerkleTreeMmcs<Goldilocks, u8, SerializingHasher<Keccak256>,
 * CompressionFunctionFromHasher<Keccak256,2,32>, 2, 32>`.
 *
 *   leaf hash   = keccak256( each field element as 8 little-endian bytes )
 *   compress    = keccak256( left ‖ right )            (binary tree, arity 2)
 *   verify path = fold from the leaf up, sibling side chosen by the index bit
 *
 * A single FRI query yields exactly this: one leaf row + one sibling per tree
 * level. (Batches of matrices at different heights inject shorter rows at their
 * layers — added when the FRI layer wires multi-matrix openings.)
 */
library MerkleVerifier {
    /// 8 little-endian bytes of a canonical Goldilocks element.
    function le8(uint64 v) internal pure returns (bytes memory b) {
        b = new bytes(8);
        for (uint256 i = 0; i < 8; i++) {
            b[i] = bytes1(uint8(v >> uint64(8 * i)));
        }
    }

    /// keccak256 of a row of field elements, serialized 8-LE-bytes each. The
    /// buffer is pre-allocated and filled in place (NOT abi.encodePacked in a
    /// loop, which is O(n²) memory — costly for wide-trace leaves).
    function hashLeaf(uint64[] memory row) internal pure returns (bytes32) {
        uint256 n = row.length;
        bytes memory buf = new bytes(n * 8);
        for (uint256 i = 0; i < n; i++) {
            uint64 v = row[i];
            uint256 base = i * 8;
            for (uint256 j = 0; j < 8; j++) {
                buf[base + j] = bytes1(uint8(v >> uint64(8 * j))); // little-endian
            }
        }
        return keccak256(buf);
    }

    function compress(bytes32 a, bytes32 b) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked(a, b));
    }

    /// Fold `leaf` up the path; `index` selects sibling side per level (LSB first).
    function foldPath(uint256 index, bytes32 leaf, bytes32[] memory siblings)
        internal pure returns (bytes32 node)
    {
        node = leaf;
        for (uint256 i = 0; i < siblings.length; i++) {
            if (index & 1 == 0) {
                node = compress(node, siblings[i]); // node is left child
            } else {
                node = compress(siblings[i], node); // node is right child
            }
            index >>= 1;
        }
    }

    /// Verify a single-matrix opening against a committed root.
    function verifyOpening(
        bytes32 root,
        uint256 index,
        uint64[] memory row,
        bytes32[] memory siblings
    ) internal pure returns (bool) {
        return foldPath(index, hashLeaf(row), siblings) == root;
    }
}
