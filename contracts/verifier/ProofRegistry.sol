// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

/**
 * ProofRegistry — chunked on-chain storage for large STARK proofs.
 *
 * A full STARK proof (~120KB now, hundreds of KB–MB at secure FRI query counts)
 * exceeds the EVM's ~128KB per-transaction calldata limit (and this testnet's RPC
 * caps tx data even lower, ~90KB). But that limit only applies to a transaction's
 * OWN calldata from outside — an internal contract→contract call can pass an
 * arbitrarily large memory blob as calldata, bounded only by gas.
 *
 * So: a submitter posts the proof in ≤24KB chunks across several small txs
 * (`appendChunk`, each well under the tx-size limit), each stored as its own
 * data-contract bytecode (SSTORE2 — cheap to write once, cheap to read via
 * EXTCODECOPY). Then a settlement contract calls `read(submitter, proofId)` to
 * assemble the proof in memory and passes it INTERNALLY to the verifier — no
 * transaction ever carries the full proof as calldata.
 *
 * Namespacing by `msg.sender` means submitters can't overwrite each other's proofs.
 */
library SSTORE2 {
    /// Store `data` as the runtime bytecode of a fresh contract; return its address.
    /// A leading STOP (0x00) byte makes the runtime non-callable.
    function write(bytes memory data) internal returns (address pointer) {
        bytes memory runtimeCode = abi.encodePacked(hex"00", data);
        bytes memory creationCode = abi.encodePacked(
            // creation code that returns everything after itself as runtime:
            // PUSH1 11; MSIZE; DUP2; CODESIZE; SUB; DUP1; SWAP3; MSIZE; CODECOPY; RETURN
            hex"600B5981380380925939F3",
            runtimeCode
        );
        assembly {
            pointer := create(0, add(creationCode, 0x20), mload(creationCode))
        }
        require(pointer != address(0), "SSTORE2: deploy failed");
    }

    /// Read the stored data back (skipping the leading STOP byte).
    function read(address pointer) internal view returns (bytes memory data) {
        uint256 total = pointer.code.length;
        if (total <= 1) return "";
        uint256 size = total - 1;
        data = new bytes(size);
        assembly {
            extcodecopy(pointer, add(data, 0x20), 1, size)
        }
    }

    function size(address pointer) internal view returns (uint256) {
        uint256 total = pointer.code.length;
        return total <= 1 ? 0 : total - 1;
    }
}

contract ProofRegistry {
    using SSTORE2 for bytes;
    using SSTORE2 for address;

    // submitter => proofId => ordered list of chunk data-contracts
    mapping(address => mapping(uint256 => address[])) private _chunks;

    event ChunkAppended(address indexed submitter, uint256 indexed proofId, uint256 index, uint256 length);
    event ProofCleared(address indexed submitter, uint256 indexed proofId);

    error EmptyChunk();
    error ChunkTooLarge();

    /// Append the next chunk of a proof. Chunks must be appended in order; the
    /// concatenation of all chunks (in order) is the exact proof bytes the verifier
    /// expects. Keep each chunk ≤ 24KB (EIP-170) and each tx ≤ the RPC size limit.
    function appendChunk(uint256 proofId, bytes calldata chunk) external {
        if (chunk.length == 0) revert EmptyChunk();
        if (chunk.length > 24_000) revert ChunkTooLarge(); // EIP-170 headroom
        address ptr = SSTORE2.write(chunk);
        uint256 idx = _chunks[msg.sender][proofId].length;
        _chunks[msg.sender][proofId].push(ptr);
        emit ChunkAppended(msg.sender, proofId, idx, chunk.length);
    }

    /// Number of chunks stored for a proof.
    function chunkCount(address submitter, uint256 proofId) external view returns (uint256) {
        return _chunks[submitter][proofId].length;
    }

    /// Total assembled proof size (bytes) without materializing it.
    function proofSize(address submitter, uint256 proofId) external view returns (uint256 total) {
        address[] storage ptrs = _chunks[submitter][proofId];
        for (uint256 i = 0; i < ptrs.length; i++) {
            total += SSTORE2.size(ptrs[i]);
        }
    }

    /// Assemble and return the full proof from its chunks. Called internally by a
    /// settlement contract, which then passes the result to the verifier — so the
    /// large blob only ever crosses an internal call boundary, never a transaction.
    function read(address submitter, uint256 proofId) external view returns (bytes memory proof) {
        address[] storage ptrs = _chunks[submitter][proofId];
        uint256 n = ptrs.length;
        // first pass: total size
        uint256 total;
        uint256[] memory sizes = new uint256[](n);
        for (uint256 i = 0; i < n; i++) {
            sizes[i] = SSTORE2.size(ptrs[i]);
            total += sizes[i];
        }
        proof = new bytes(total);
        // second pass: EXTCODECOPY each chunk (offset 1, skipping the STOP byte)
        uint256 dst;
        assembly {
            dst := add(proof, 0x20)
        }
        for (uint256 i = 0; i < n; i++) {
            address p = ptrs[i];
            uint256 s = sizes[i];
            assembly {
                extcodecopy(p, dst, 1, s)
                dst := add(dst, s)
            }
        }
    }

    /// Reclaim a proof's chunk index once it has been consumed (the underlying
    /// data-contracts remain but are dereferenced; storage refund on the array).
    function clear(uint256 proofId) external {
        delete _chunks[msg.sender][proofId];
        emit ProofCleared(msg.sender, proofId);
    }
}
