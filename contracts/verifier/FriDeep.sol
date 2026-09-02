// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "./GoldilocksField.sol";
import "./FriFolding.sol";

/**
 * FriDeep — the DEEP reduced-opening combination (p3 `open_input`). For a query,
 * each committed matrix at a given height contributes, per opening point z and
 * per column, a quotient
 *
 *     alphaPow · ( p(z) − p(x) ) / ( z − x )
 *
 * accumulated into that height's reduced opening `ro`, with `alphaPow *= alpha`
 * after every column. `p(x)` are the base-field opened values (authenticated by
 * the input Merkle opening); `p(z)`, `alpha`, `ro` live in the challenge field.
 * The query point is
 *
 *     x = GENERATOR · g(logHeight) ^ reverseBits(index >> bitsReduced, logHeight)
 *
 * (GENERATOR = 7, the Goldilocks multiplicative generator; the input LDE domain
 * is a coset). These `ro` values seed and roll into the FRI query loop.
 */
library FriDeep {
    uint256 internal constant GENERATOR = 7;

    /// The query's evaluation point on this matrix's (coset) domain.
    function reducedOpeningPoint(uint256 index, uint256 logHeight, uint256 logGlobalMax)
        internal pure returns (uint256)
    {
        uint256 rev = FriFolding.reverseBits(index >> (logGlobalMax - logHeight), logHeight);
        uint256 g = GoldilocksField.exp(FriFolding.twoAdicGen(logHeight), rev);
        return GoldilocksField.mul(GENERATOR, g);
    }

    /// Accumulate one matrix's contribution. `zs` are the opening points; `pAtZ`
    /// is row-major `numPoints × numCols` claimed evaluations; `pAtX` is the
    /// opened base row (numCols). Returns the accumulated `ro` and the running
    /// `alphaPow` (starting from `alphaPowIn`, so heights can chain across
    /// matrices).
    function reduceRow(
        FriFolding.E memory alpha,
        FriFolding.E memory alphaPowIn,
        uint256 x,
        uint64[] memory pAtX,
        FriFolding.E[] memory zs,
        FriFolding.E[] memory pAtZ
    ) internal pure returns (FriFolding.E memory ro, FriFolding.E memory alphaPow) {
        alphaPow = alphaPowIn;
        uint256 numCols = pAtX.length;
        for (uint256 p = 0; p < zs.length; p++) {
            FriFolding.E memory inv = _invZmX(zs[p], x);
            for (uint256 c = 0; c < numCols; c++) {
                _accumulate(ro, alphaPow, pAtZ[p * numCols + c], pAtX[c], inv);
                (alphaPow.c0, alphaPow.c1) =
                    GoldilocksField.extMul(alphaPow.c0, alphaPow.c1, alpha.c0, alpha.c1);
            }
        }
    }

    /// 1 / (z − x)
    function _invZmX(FriFolding.E memory z, uint256 x) private pure returns (FriFolding.E memory inv) {
        (inv.c0, inv.c1) = GoldilocksField.extInv(GoldilocksField.sub(z.c0, x), z.c1);
    }

    /// ro += alphaPow · (pz − px) · invZmX     (kept separate to bound stack depth)
    function _accumulate(
        FriFolding.E memory ro,
        FriFolding.E memory alphaPow,
        FriFolding.E memory pz,
        uint64 px,
        FriFolding.E memory inv
    ) private pure {
        (uint256 t0, uint256 t1) =
            GoldilocksField.extMul(GoldilocksField.sub(pz.c0, px), pz.c1, inv.c0, inv.c1);
        (t0, t1) = GoldilocksField.extMul(alphaPow.c0, alphaPow.c1, t0, t1);
        ro.c0 = GoldilocksField.add(ro.c0, t0);
        ro.c1 = GoldilocksField.add(ro.c1, t1);
    }
}
