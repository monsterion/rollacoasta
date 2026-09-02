// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "forge-std/Test.sol";
import "../../contracts/verifier/ProofRegistry.sol";

/// Round-trip correctness: chunks appended in order must reassemble to the exact
/// original bytes, for any sizes/alignments. This is the load-bearing property —
/// the assembled proof must equal the calldata the verifier would have received.
contract ProofRegistryTest is Test {
    ProofRegistry reg;

    function setUp() public {
        reg = new ProofRegistry();
    }

    function _chunkAndStore(uint256 proofId, bytes memory data, uint256 chunkSize) internal {
        for (uint256 off = 0; off < data.length; off += chunkSize) {
            uint256 end = off + chunkSize;
            if (end > data.length) end = data.length;
            bytes memory c = new bytes(end - off);
            for (uint256 i = 0; i < c.length; i++) c[i] = data[off + i];
            reg.appendChunk(proofId, c);
        }
    }

    function _mk(uint256 n) internal pure returns (bytes memory d) {
        d = new bytes(n);
        for (uint256 i = 0; i < n; i++) d[i] = bytes1(uint8(uint256(keccak256(abi.encode(i))) & 0xff));
    }

    function test_singleChunkRoundTrip() public {
        bytes memory data = _mk(1000);
        _chunkAndStore(1, data, 24_000);
        assertEq(reg.chunkCount(address(this), 1), 1);
        assertEq(reg.read(address(this), 1), data, "single chunk mismatch");
    }

    function test_multiChunkRoundTrip() public {
        // 130KB across ~6 chunks of 24KB — like a real proof
        bytes memory data = _mk(130_000);
        _chunkAndStore(2, data, 24_000);
        assertEq(reg.chunkCount(address(this), 2), 6);
        assertEq(reg.proofSize(address(this), 2), 130_000);
        assertEq(reg.read(address(this), 2), data, "multi chunk mismatch");
    }

    function test_unalignedChunks() public {
        bytes memory data = _mk(50_001); // odd size
        _chunkAndStore(3, data, 7_777); // odd chunk size
        assertEq(reg.read(address(this), 3), data, "unaligned mismatch");
    }

    function test_namespacedBySubmitter() public {
        bytes memory a = _mk(500);
        bytes memory b = _mk(600);
        vm.prank(address(0xA11CE));
        reg.appendChunk(9, a);
        vm.prank(address(0xB0B));
        reg.appendChunk(9, b); // same proofId, different submitter
        assertEq(reg.read(address(0xA11CE), 9), a);
        assertEq(reg.read(address(0xB0B), 9), b);
    }

    function test_rejectsOversizeChunk() public {
        bytes memory big = _mk(24_001);
        vm.expectRevert(ProofRegistry.ChunkTooLarge.selector);
        reg.appendChunk(4, big);
    }

    function testFuzz_roundTrip(uint16 total, uint8 chunk) public {
        uint256 n = bound(total, 1, 60_000);
        uint256 cs = bound(chunk, 1, 240) * 100; // 100..24000
        bytes memory data = _mk(n);
        _chunkAndStore(7, data, cs);
        assertEq(reg.read(address(this), 7), data, "fuzz round-trip mismatch");
    }
}
