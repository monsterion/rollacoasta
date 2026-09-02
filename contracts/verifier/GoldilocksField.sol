// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

/**
 * GoldilocksField — the field arithmetic the Plonky3 STARK verifier is built on.
 *
 * Base field:  F_p,  p = 2^64 - 2^32 + 1 = 18446744069414584321  (Goldilocks).
 * Extension:   F_p^2 = F_p[X]/(X^2 - 7)  — the challenge field the FRI/Fiat-Shamir
 *              transcript lives in (p3-goldilocks BinomiallyExtendable<2>, W = 7).
 *
 * All base ops use EVM `addmod`/`mulmod`, so they reduce mod p even for
 * non-canonical (>= p) inputs; the verifier still range-checks field elements at
 * the calldata boundary. This library is game-agnostic — the same field layer
 * serves any Plonky3-Goldilocks proof (RollaCoasta and future games).
 */
library GoldilocksField {
    uint256 internal constant P = 0xFFFFFFFF00000001; // 2^64 - 2^32 + 1
    uint256 internal constant W = 7; // X^2 - 7 extension

    // ---- base field F_p ----
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        return addmod(a, b, P);
    }
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return addmod(a, P - (b % P), P);
    }
    function neg(uint256 a) internal pure returns (uint256) {
        a %= P;
        return a == 0 ? 0 : P - a;
    }
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        return mulmod(a, b, P);
    }
    /// a^e by square-and-multiply.
    function exp(uint256 a, uint256 e) internal pure returns (uint256 r) {
        r = 1;
        a %= P;
        while (e != 0) {
            if (e & 1 == 1) r = mulmod(r, a, P);
            a = mulmod(a, a, P);
            e >>= 1;
        }
    }
    /// Multiplicative inverse via Fermat: a^(p-2). Reverts on 0.
    function inv(uint256 a) internal pure returns (uint256) {
        require(a % P != 0, "inv0");
        return exp(a, P - 2);
    }
    function isCanonical(uint256 a) internal pure returns (bool) {
        return a < P;
    }

    // ---- extension field F_p^2 (elements are (c0, c1) = c0 + c1*X) ----
    function extAdd(uint256 a0, uint256 a1, uint256 b0, uint256 b1)
        internal pure returns (uint256, uint256)
    {
        return (addmod(a0, b0, P), addmod(a1, b1, P));
    }
    function extSub(uint256 a0, uint256 a1, uint256 b0, uint256 b1)
        internal pure returns (uint256, uint256)
    {
        return (sub(a0, b0), sub(a1, b1));
    }
    /// (a0 + a1 X)(b0 + b1 X) = (a0 b0 + 7 a1 b1) + (a0 b1 + a1 b0) X   (X^2 = 7)
    function extMul(uint256 a0, uint256 a1, uint256 b0, uint256 b1)
        internal pure returns (uint256 c0, uint256 c1)
    {
        uint256 a0b0 = mulmod(a0, b0, P);
        uint256 a1b1 = mulmod(a1, b1, P);
        c0 = addmod(a0b0, mulmod(W, a1b1, P), P);
        c1 = addmod(mulmod(a0, b1, P), mulmod(a1, b0, P), P);
    }
    /// base-field scalar times an extension element.
    function extScale(uint256 s, uint256 a0, uint256 a1)
        internal pure returns (uint256, uint256)
    {
        return (mulmod(s, a0, P), mulmod(s, a1, P));
    }
    /// (a0 + a1 X)^-1 = (a0 - a1 X) / (a0^2 - 7 a1^2). Reverts on 0.
    function extInv(uint256 a0, uint256 a1) internal pure returns (uint256, uint256) {
        uint256 denom = addmod(
            mulmod(a0, a0, P),
            P - mulmod(W, mulmod(a1, a1, P), P) % P,
            P
        );
        require(denom != 0, "extInv0");
        uint256 id = inv(denom);
        return (mulmod(a0, id, P), mulmod(neg(a1), id, P));
    }
}
