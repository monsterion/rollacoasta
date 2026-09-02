// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "./GoldilocksField.sol";
import "./FriFolding.sol";
import "./ConstraintEval.sol";
import "./StarkVerifier.sol";
import "./RoundConstraints.sol";

/**
 * RoundStarkVerifier — the RollaCoasta INPUT-BOUND round verifier. Same as
 * TickStarkVerifier but for the composed `RoundAir`: it proves not just the price
 * recurrence but that all randomness (noise/jumps/regime) derives from a COMMITTED
 * seed (Poseidon2) and the order flow is bound to `orderLogHash`. Public values:
 * [init, final, seed, roundId, orderLogHash].
 *
 * Reuses the AIR-agnostic FRI + opening verification verbatim; only the constraint
 * evaluator (`RoundConstraints`, 101 split sub-contracts) is AIR-specific.
 */
library RoundStarkVerifier {
    function verifyStark(StarkVerifier.StarkProof memory pf) public view {
        StarkVerifier.Chals memory ch = StarkVerifier.verifyOpenings(pf);

        ConstraintEval.Sels memory s = ConstraintEval.selectors(ch.zeta, pf.degreeBits);
        FriFolding.E memory folded =
            RoundConstraints.foldConstraints(pf.traceLocal, pf.traceNext, pf.pub, s, ch.alphaC);
        FriFolding.E memory quotient =
            ConstraintEval.recomposeQuotient(ch.zeta, pf.degreeBits, pf.chunks);
        (uint256 m0, uint256 m1) =
            GoldilocksField.extMul(folded.c0, folded.c1, s.invVanishing.c0, s.invVanishing.c1);
        require(m0 == quotient.c0 && m1 == quotient.c1, "round constraint mismatch");
    }
}
