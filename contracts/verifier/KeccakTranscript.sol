// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

/**
 * KeccakTranscript — the Fiat-Shamir challenger for the STARK verifier, matching
 * p3's `SerializingChallenger64<Goldilocks, HashChallenger<u8, Keccak256Hash, 32>>`
 * byte-for-byte. keccak256 is a native EVM op, so this is cheap on-chain.
 *
 * Semantics (from p3-challenger):
 *   - observe(field): append the element's 8 little-endian bytes to the input
 *     buffer, and invalidate any pending output.
 *   - flush (on the first sample after an observe, or when output is exhausted):
 *     out = keccak256(inputBuffer); inputBuffer = out (32 bytes, for chaining);
 *     32 output bytes become available, consumed from the END (pop).
 *   - a base field element = rejection-sample 8 bytes as a little-endian u64
 *     until the value is < p (the low-64-bit mask is a no-op for Goldilocks).
 *   - an extension (challenge-field) element = two base elements.
 *   - sample_bits(b) = one u64 sample, masked to the low b bits (no rejection).
 */
library KeccakTranscript {
    uint256 internal constant P = 0xFFFFFFFF00000001; // Goldilocks

    // The input buffer is pre-allocated ONCE and appended IN PLACE (tracking a
    // length), then reset on flush. This avoids the O(n²) memory blowup of
    // reallocating on every observe — critical for wide AIRs (thousands of
    // observed field elements per round).
    uint256 internal constant CAP = 1 << 17; // 128 KiB (max run between flushes)

    struct T {
        bytes inBuf; // pre-allocated buffer (+ 32-byte chaining value after a flush)
        uint256 len; // bytes currently used in inBuf
        bytes32 outHash; // last keccak output
        uint256 outRemaining; // output bytes left, consumed from the high index
    }

    function init() internal pure returns (T memory t) {
        t.inBuf = new bytes(CAP);
    }

    function observe(T memory t, uint64 v) internal pure {
        t.outRemaining = 0; // pending output invalid
        uint256 n = t.len;
        for (uint256 i = 0; i < 8; i++) {
            t.inBuf[n + i] = bytes1(uint8(v >> uint64(8 * i))); // little-endian, in place
        }
        t.len = n + 8;
    }

    /// Observe a 32-byte Merkle root. With the keccak256 (byte-digest) MMCS a
    /// root is a `Hash<F,u8,32>`, which p3 observes as its 32 raw bytes in order.
    function observeDigest(T memory t, bytes32 d) internal pure {
        t.outRemaining = 0;
        uint256 n = t.len;
        for (uint256 i = 0; i < 32; i++) {
            t.inBuf[n + i] = d[i];
        }
        t.len = n + 32;
    }

    function flush(T memory t) private pure {
        bytes memory buf = t.inBuf;
        uint256 l = t.len;
        bytes32 h;
        assembly {
            h := keccak256(add(buf, 0x20), l) // hash only the used prefix
        }
        t.outHash = h;
        for (uint256 i = 0; i < 32; i++) {
            t.inBuf[i] = h[i]; // reset: inBuf = [outHash] (chaining), len = 32
        }
        t.len = 32;
        t.outRemaining = 32;
    }

    function sampleByte(T memory t) private pure returns (uint8) {
        if (t.outRemaining == 0) flush(t);
        t.outRemaining -= 1;
        return uint8(t.outHash[t.outRemaining]); // pop from the end
    }

    function sampleU64(T memory t) internal pure returns (uint64 v) {
        for (uint256 i = 0; i < 8; i++) {
            v |= uint64(sampleByte(t)) << uint64(8 * i); // little-endian
        }
    }

    /// A base field element (rejection sampling into [0, p)).
    function sampleField(T memory t) internal pure returns (uint64) {
        while (true) {
            uint64 v = sampleU64(t);
            if (v < P) return v;
        }
        revert("unreachable");
    }

    /// A challenge-field (F_p^2) element = two base elements (c0, c1).
    function sampleExt(T memory t) internal pure returns (uint64 c0, uint64 c1) {
        c0 = sampleField(t);
        c1 = sampleField(t);
    }

    /// Low `bits` bits of one u64 sample (query indices; no rejection).
    function sampleBits(T memory t, uint256 bits) internal pure returns (uint256) {
        return uint256(sampleU64(t)) & ((uint256(1) << bits) - 1);
    }
}
