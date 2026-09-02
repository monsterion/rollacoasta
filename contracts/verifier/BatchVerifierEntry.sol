// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "./StarkProofCodec.sol";
import "./StarkVerifier.sol";
import "./BatchStarkVerifier.sol";

/**
 * BatchVerifierEntry — deployable entry point for the batch round verifier. Parses
 * a calldata proof, runs the full trustless verification of N rounds (reverts if
 * invalid), and returns the single bound public value `batchCommit`. The batch
 * settlement contract recomputes `batchCommit` from the N per-round tuples (via
 * Poseidon2Goldilocks) and requires it to equal this — eager, dispute-free.
 */
contract BatchVerifierEntry {
    function verify(bytes calldata proof) external view returns (uint64 batchCommit) {
        StarkVerifier.StarkProof memory pf = StarkProofCodec.parse(proof);
        BatchStarkVerifier.verifyStark(pf); // reverts unless valid
        require(pf.pub.length == 1, "batch: expected 1 public value");
        return uint64(pf.pub[0]);
    }
}
