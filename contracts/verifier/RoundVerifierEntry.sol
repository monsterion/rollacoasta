// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "./StarkProofCodec.sol";
import "./StarkVerifier.sol";
import "./RoundStarkVerifier.sol";

/**
 * RoundVerifierEntry — deployable entry point for the input-bound round verifier.
 * Parses a calldata proof, runs the full trustless verification (reverts if
 * invalid), and returns the bound public values so a settlement contract can
 * check them: [init, final, seed, roundId, orderLogHash].
 *
 * A successful return means: a RollaCoasta round starting at `init` produced
 * `final`, with all randomness derived from `seed` (Poseidon2) and order flow
 * bound to `orderLogHash` — no operator, no trusted setup.
 */
contract RoundVerifierEntry {
    function verify(bytes calldata proof)
        external
        view
        returns (uint64 init, uint64 finalPrice, uint64 seed, uint64 roundId, uint64 orderLogHash)
    {
        StarkVerifier.StarkProof memory pf = StarkProofCodec.parse(proof);
        RoundStarkVerifier.verifyStark(pf); // reverts unless the proof is valid
        require(pf.pub.length == 5, "round: expected 5 public values");
        return (
            uint64(pf.pub[0]),
            uint64(pf.pub[1]),
            uint64(pf.pub[2]),
            uint64(pf.pub[3]),
            uint64(pf.pub[4])
        );
    }
}
