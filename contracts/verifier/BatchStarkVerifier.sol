// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "./GoldilocksField.sol";
import "./FriFolding.sol";
import "./ConstraintEval.sol";
import "./StarkVerifier.sol";
import "./BatchConstraints.sol";

/**
 * BatchStarkVerifier — verifies a BatchRoundAir proof: N RollaCoasta rounds in one
 * proof, each with per-round input binding, eager & dispute-free. Same machinery as
 * RoundStarkVerifier; only the constraint evaluator (BatchConstraints) differs.
 * Public values: [batchCommit] (the settlement contract recomputes it from the N
 * rounds' data and settles each). Verify cost is ~flat in N ⇒ per-round ≈ verify/N.
 */
library BatchStarkVerifier {
    function verifyStark(StarkVerifier.StarkProof memory pf) public view {
        StarkVerifier.Chals memory ch = StarkVerifier.verifyOpenings(pf);
        ConstraintEval.Sels memory s = ConstraintEval.selectors(ch.zeta, pf.degreeBits);
        FriFolding.E memory folded =
            BatchConstraints.foldConstraints(pf.traceLocal, pf.traceNext, pf.pub, s, ch.alphaC);
        FriFolding.E memory quotient =
            ConstraintEval.recomposeQuotient(ch.zeta, pf.degreeBits, pf.chunks);
        (uint256 m0, uint256 m1) =
            GoldilocksField.extMul(folded.c0, folded.c1, s.invVanishing.c0, s.invVanishing.c1);
        require(m0 == quotient.c0 && m1 == quotient.c1, "batch constraint mismatch");
    }
}
