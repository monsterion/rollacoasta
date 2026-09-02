// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "./GoldilocksField.sol";
import "./FriFolding.sol";
import "./ConstraintEval.sol";
import "./StarkVerifier.sol";
import "./TickConstraints.sol";

/**
 * TickStarkVerifier — the RollaCoasta round verifier. It reuses the full,
 * AIR-agnostic FRI + opening verification (`StarkVerifier.verifyOpenings`) and
 * plugs in the auto-generated tick constraint evaluator (`TickConstraints`,
 * 39 split sub-contracts) for the constraint/quotient check.
 *
 * A valid proof here means: a RollaCoasta round was computed correctly by the
 * canonical WAD=2^32 engine — no operator, no trusted setup. This is what
 * `RollaSettlementZK` gates settlement on.
 */
library TickStarkVerifier {
    function verifyStark(StarkVerifier.StarkProof memory pf) internal view {
        // 1) FRI + all openings (transcript, multi-matrix DEEP, fold/Merkle loop)
        StarkVerifier.Chals memory ch = StarkVerifier.verifyOpenings(pf);

        // 2) tick constraint check: fold the round AIR's constraints and verify
        //    foldedConstraints · invVanishing == recomposedQuotient
        ConstraintEval.Sels memory s = ConstraintEval.selectors(ch.zeta, pf.degreeBits);
        FriFolding.E memory folded =
            TickConstraints.foldConstraints(pf.traceLocal, pf.traceNext, pf.pub, s, ch.alphaC);
        FriFolding.E memory quotient =
            ConstraintEval.recomposeQuotient(ch.zeta, pf.degreeBits, pf.chunks);
        (uint256 m0, uint256 m1) =
            GoldilocksField.extMul(folded.c0, folded.c1, s.invVanishing.c0, s.invVanishing.c1);
        require(m0 == quotient.c0 && m1 == quotient.c1, "tick constraint mismatch");
    }
}
