// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "./GoldilocksField.sol";
import "./FriFolding.sol";

/**
 * ConstraintEval — the uni-stark constraint layer that wraps FRI. It provides
 * the two AIR-independent primitives; the per-AIR `eval` (which constraints to
 * fold) is generated from the AIR itself.
 *
 *   selectors(zeta, degreeBits): the Lagrange selectors on the trace domain
 *     (shift = 1): with n = 2^degreeBits, h = g(degreeBits),
 *       z_h          = zeta^n − 1
 *       isFirst      = z_h / (zeta − 1)
 *       isTransition = zeta − h^{-1}
 *       isLast       = z_h / (zeta − h^{-1})
 *       invVanishing = 1 / z_h
 *
 *   fold(acc, alpha, term): the folder step `acc = acc·alpha + term`, where each
 *     `term` is `selector · constraintExpr` (matching VerifierConstraintFolder).
 *
 * The verifier then checks `foldedConstraints · invVanishing == quotient(zeta)`.
 */
library ConstraintEval {
    struct Sels {
        FriFolding.E isFirst;
        FriFolding.E isLast;
        FriFolding.E isTransition;
        FriFolding.E invVanishing;
    }

    /// zeta^(2^k) by repeated squaring in the extension field.
    function extPow2(FriFolding.E memory z, uint256 k) internal pure returns (FriFolding.E memory r) {
        r.c0 = z.c0; // copy fields (NOT `r = z`, which would alias & mutate z)
        r.c1 = z.c1;
        for (uint256 i = 0; i < k; i++) {
            (r.c0, r.c1) = GoldilocksField.extMul(r.c0, r.c1, r.c0, r.c1);
        }
    }

    function extDiv(FriFolding.E memory a, FriFolding.E memory b) internal pure returns (FriFolding.E memory r) {
        (uint256 i0, uint256 i1) = GoldilocksField.extInv(b.c0, b.c1);
        (r.c0, r.c1) = GoldilocksField.extMul(a.c0, a.c1, i0, i1);
    }

    function selectors(FriFolding.E memory zeta, uint256 degreeBits) internal pure returns (Sels memory s) {
        uint256 hInv = GoldilocksField.inv(FriFolding.twoAdicGen(degreeBits));
        FriFolding.E memory zh = extPow2(zeta, degreeBits); // zeta^n
        zh.c0 = GoldilocksField.sub(zh.c0, 1); // zeta^n − 1
        s.isFirst = extDiv(zh, FriFolding.E(GoldilocksField.sub(zeta.c0, 1), zeta.c1));
        s.isTransition = FriFolding.E(GoldilocksField.sub(zeta.c0, hInv), zeta.c1);
        s.isLast = extDiv(zh, s.isTransition);
        (s.invVanishing.c0, s.invVanishing.c1) = GoldilocksField.extInv(zh.c0, zh.c1);
    }

    /// acc = acc·alpha + term
    function fold(FriFolding.E memory acc, FriFolding.E memory alpha, FriFolding.E memory term)
        internal pure returns (FriFolding.E memory r)
    {
        (uint256 m0, uint256 m1) = GoldilocksField.extMul(acc.c0, acc.c1, alpha.c0, alpha.c1);
        r.c0 = GoldilocksField.add(m0, term.c0);
        r.c1 = GoldilocksField.add(m1, term.c1);
    }

    // ---- quotient recomposition ----
    uint256 internal constant GENERATOR = 7;

    /// from_ext: a chunk's DIMENSION=2 opened values are coefficients over the
    /// ext basis [1, X] (X = (0,1)): value = c0 + c1·X.
    function fromExt(FriFolding.E memory c0, FriFolding.E memory c1) internal pure returns (FriFolding.E memory r) {
        (uint256 m0, uint256 m1) = GoldilocksField.extMul(c1.c0, c1.c1, 0, 1); // c1·X
        r.c0 = GoldilocksField.add(c0.c0, m0);
        r.c1 = GoldilocksField.add(c0.c1, m1);
    }

    /// vanishing_j(x) = (x · shiftInv)^(2^degreeBits) − 1
    function _van(FriFolding.E memory x, uint256 shiftInv, uint256 degreeBits)
        private pure returns (FriFolding.E memory t)
    {
        (t.c0, t.c1) = GoldilocksField.extScale(shiftInv, x.c0, x.c1);
        t = extPow2(t, degreeBits);
        t.c0 = GoldilocksField.sub(t.c0, 1);
    }

    /// Recompose the quotient at zeta from its opened chunks. `chunks[i]` holds
    /// the two ext values of chunk i. Chunk domains: shift_i = GENERATOR·h^i,
    /// h = g(degreeBits + log2(numChunks)); each has size 2^degreeBits.
    function recomposeQuotient(FriFolding.E memory zeta, uint256 degreeBits, FriFolding.E[2][] memory chunks)
        internal pure returns (FriFolding.E memory q)
    {
        uint256 num = chunks.length;
        uint256 h = FriFolding.twoAdicGen(degreeBits + _log2(num));
        for (uint256 i = 0; i < num; i++) {
            uint256 shiftI = GoldilocksField.mul(GENERATOR, GoldilocksField.exp(h, i));
            FriFolding.E memory zp = _zp(zeta, degreeBits, h, num, i, shiftI);
            FriFolding.E memory cv = fromExt(chunks[i][0], chunks[i][1]);
            (uint256 p0, uint256 p1) = GoldilocksField.extMul(zp.c0, zp.c1, cv.c0, cv.c1);
            q.c0 = GoldilocksField.add(q.c0, p0);
            q.c1 = GoldilocksField.add(q.c1, p1);
        }
    }

    /// zp_i = Π_{j≠i} vanishing_j(zeta) · vanishing_j(shift_i)^{-1}
    function _zp(FriFolding.E memory zeta, uint256 degreeBits, uint256 h, uint256 num, uint256 i, uint256 shiftI)
        private pure returns (FriFolding.E memory zp)
    {
        zp = FriFolding.E(1, 0);
        FriFolding.E memory si = FriFolding.E(shiftI, 0);
        for (uint256 j = 0; j < num; j++) {
            if (j == i) continue;
            uint256 sjInv = GoldilocksField.inv(GoldilocksField.mul(GENERATOR, GoldilocksField.exp(h, j)));
            FriFolding.E memory num_ = _van(zeta, sjInv, degreeBits);
            FriFolding.E memory den = _van(si, sjInv, degreeBits);
            (uint256 d0, uint256 d1) = GoldilocksField.extInv(den.c0, den.c1);
            (num_.c0, num_.c1) = GoldilocksField.extMul(num_.c0, num_.c1, d0, d1);
            (zp.c0, zp.c1) = GoldilocksField.extMul(zp.c0, zp.c1, num_.c0, num_.c1);
        }
    }

    function _log2(uint256 n) private pure returns (uint256 k) {
        while (n > 1) { n >>= 1; k++; }
    }
}
