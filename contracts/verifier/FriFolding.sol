// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "./GoldilocksField.sol";

/**
 * FriFolding — the core FRI arithmetic for the STARK verifier: fold an arity-2
 * commit-phase step. Given the two sibling evaluations e0 = f(x), e1 = f(-x)
 * (challenge-field elements) and the folding challenge beta, the folded value at
 * the parent is the unique linear interpolation of (x, e0), (-x, e1) at beta:
 *
 *     fold = ( e0·(beta + x) − e1·(beta − x) ) / (2x)
 *
 * where x = twoAdicGenerator(logHeight+1) ^ reverseBits(index, logHeight), the
 * evaluation point p3 assigns to this query. Interpolation is unique, so this
 * equals p3's `fold_row` exactly (differential-tested).
 *
 * Extension-field (F_p^2) elements are passed as coefficient pairs (c0, c1).
 */
library FriFolding {
    /// Goldilocks two-adic generators: g[i] has order 2^i (from p3-goldilocks).
    function twoAdicGen(uint256 bits) internal pure returns (uint256) {
        uint64[33] memory g;
        g[0] = 1;
        g[1] = 18446744069414584320;
        g[2] = 281474976710656;
        g[3] = 18446744069397807105;
        g[4] = 17293822564807737345;
        g[5] = 70368744161280;
        g[6] = 549755813888;
        g[7] = 17870292113338400769;
        g[8] = 13797081185216407910;
        g[9] = 1803076106186727246;
        g[10] = 11353340290879379826;
        g[11] = 455906449640507599;
        g[12] = 17492915097719143606;
        g[13] = 1532612707718625687;
        g[14] = 16207902636198568418;
        g[15] = 17776499369601055404;
        g[16] = 6115771955107415310;
        g[17] = 12380578893860276750;
        g[18] = 9306717745644682924;
        g[19] = 18146160046829613826;
        g[20] = 3511170319078647661;
        g[21] = 17654865857378133588;
        g[22] = 5416168637041100469;
        g[23] = 16905767614792059275;
        g[24] = 9713644485405565297;
        g[25] = 5456943929260765144;
        g[26] = 17096174751763063430;
        g[27] = 1213594585890690845;
        g[28] = 6414415596519834757;
        g[29] = 16116352524544190054;
        g[30] = 9123114210336311365;
        g[31] = 4614640910117430873;
        g[32] = 1753635133440165772;
        return g[bits];
    }

    /// Reverse the low `bitLen` bits of `x`.
    function reverseBits(uint256 x, uint256 bitLen) internal pure returns (uint256 r) {
        for (uint256 i = 0; i < bitLen; i++) {
            r = (r << 1) | ((x >> i) & 1);
        }
    }

    /// The query's evaluation point x = g^{reverseBits(index, logHeight)}.
    function foldPoint(uint256 index, uint256 logHeight) internal pure returns (uint256) {
        return GoldilocksField.exp(twoAdicGen(logHeight + 1), reverseBits(index, logHeight));
    }

    /// A challenge-field (F_p^2) element.
    struct E {
        uint256 c0;
        uint256 c1;
    }

    /// Arity-2 fold. Uses memory structs to stay within the stack limit without
    /// via_ir. Returns the folded challenge-field element.
    function fold2(uint256 index, uint256 logHeight, E memory beta, E memory e0, E memory e1)
        internal pure returns (E memory r)
    {
        uint256 x = foldPoint(index, logHeight);
        // t = e0·(beta + x),  u = e1·(beta − x)   (x is base, added to c0)
        (uint256 t0, uint256 t1) =
            GoldilocksField.extMul(e0.c0, e0.c1, GoldilocksField.add(beta.c0, x), beta.c1);
        (uint256 u0, uint256 u1) =
            GoldilocksField.extMul(e1.c0, e1.c1, GoldilocksField.sub(beta.c0, x), beta.c1);
        uint256 inv2x = GoldilocksField.inv(GoldilocksField.add(x, x));
        r.c0 = GoldilocksField.mul(inv2x, GoldilocksField.sub(t0, u0)); // (t-u)/(2x)
        r.c1 = GoldilocksField.mul(inv2x, GoldilocksField.sub(t1, u1));
    }
}
