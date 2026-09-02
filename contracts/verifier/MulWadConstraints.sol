// AUTO-GENERATED split constraint evaluator for the MulWad AIR (131 constraints, 6 chunks)
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;
import "./GoldilocksField.sol";
import "./FriFolding.sol";
import "./ConstraintEval.sol";

library MulWadC0 {
    function fold(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s, FriFolding.E memory alpha, FriFolding.E memory acc) public pure returns (FriFolding.E memory) {
        acc = ConstraintEval.fold(acc, alpha, _c0(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c1(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c2(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c3(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c4(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c5(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c6(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c7(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c8(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c9(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c10(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c11(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c12(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c13(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c14(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c15(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c16(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c17(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c18(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c19(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c20(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c21(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c22(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c23(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c24(local, next, pub, s));
        return acc;
    }
    function _pub(uint64 v) private pure returns (FriFolding.E memory) { return FriFolding.E(v, 0); }
    function _c(uint64 v) private pure returns (FriFolding.E memory) { return FriFolding.E(v, 0); }
    function _add(FriFolding.E memory a, FriFolding.E memory b) private pure returns (FriFolding.E memory r) { (r.c0,r.c1)=GoldilocksField.extAdd(a.c0,a.c1,b.c0,b.c1); }
    function _sub(FriFolding.E memory a, FriFolding.E memory b) private pure returns (FriFolding.E memory r) { (r.c0,r.c1)=GoldilocksField.extSub(a.c0,a.c1,b.c0,b.c1); }
    function _mul(FriFolding.E memory a, FriFolding.E memory b) private pure returns (FriFolding.E memory r) { (r.c0,r.c1)=GoldilocksField.extMul(a.c0,a.c1,b.c0,b.c1); }
    function _neg(FriFolding.E memory a) private pure returns (FriFolding.E memory r) { r.c0=GoldilocksField.neg(a.c0); r.c1=GoldilocksField.neg(a.c1); }
    function _c0(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[4];
        t[1] = local[4];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[4];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[5];
        t[1] = local[5];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[5];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[6];
        t[1] = local[6];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[6];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[7];
        t[1] = local[7];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[7];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[8];
        t[1] = local[8];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[8];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[9];
        t[1] = local[9];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[9];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[10];
        t[1] = local[10];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[10];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[11];
        t[1] = local[11];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[11];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[12];
        t[1] = local[12];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[12];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[13];
        t[1] = local[13];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[13];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[14];
        t[1] = local[14];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[14];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[15];
        t[1] = local[15];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[15];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[16];
        t[1] = local[16];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[16];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[17];
        t[1] = local[17];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[17];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[18];
        t[1] = local[18];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[18];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[19];
        t[1] = local[19];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[19];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[20];
        t[1] = local[20];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[20];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[21];
        t[1] = local[21];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[21];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[22];
        t[1] = local[22];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[22];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[23];
        t[1] = local[23];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[23];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[24];
        t[1] = local[24];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[24];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[25];
        t[1] = local[25];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[25];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[26];
        t[1] = local[26];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[26];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[27];
        t[1] = local[27];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[27];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[28];
        t[1] = local[28];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[28];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library MulWadC1 {
    function fold(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s, FriFolding.E memory alpha, FriFolding.E memory acc) public pure returns (FriFolding.E memory) {
        acc = ConstraintEval.fold(acc, alpha, _c0(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c1(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c2(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c3(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c4(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c5(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c6(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c7(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c8(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c9(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c10(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c11(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c12(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c13(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c14(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c15(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c16(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c17(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c18(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c19(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c20(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c21(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c22(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c23(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c24(local, next, pub, s));
        return acc;
    }
    function _pub(uint64 v) private pure returns (FriFolding.E memory) { return FriFolding.E(v, 0); }
    function _c(uint64 v) private pure returns (FriFolding.E memory) { return FriFolding.E(v, 0); }
    function _add(FriFolding.E memory a, FriFolding.E memory b) private pure returns (FriFolding.E memory r) { (r.c0,r.c1)=GoldilocksField.extAdd(a.c0,a.c1,b.c0,b.c1); }
    function _sub(FriFolding.E memory a, FriFolding.E memory b) private pure returns (FriFolding.E memory r) { (r.c0,r.c1)=GoldilocksField.extSub(a.c0,a.c1,b.c0,b.c1); }
    function _mul(FriFolding.E memory a, FriFolding.E memory b) private pure returns (FriFolding.E memory r) { (r.c0,r.c1)=GoldilocksField.extMul(a.c0,a.c1,b.c0,b.c1); }
    function _neg(FriFolding.E memory a) private pure returns (FriFolding.E memory r) { r.c0=GoldilocksField.neg(a.c0); r.c1=GoldilocksField.neg(a.c1); }
    function _c0(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[29];
        t[1] = local[29];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[29];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[30];
        t[1] = local[30];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[30];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[31];
        t[1] = local[31];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[31];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[32];
        t[1] = local[32];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[32];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[33];
        t[1] = local[33];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[33];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[34];
        t[1] = local[34];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[34];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[35];
        t[1] = local[35];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[35];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[36];
        t[1] = local[36];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[36];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[37];
        t[1] = local[37];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[37];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[38];
        t[1] = local[38];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[38];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[39];
        t[1] = local[39];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[39];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[40];
        t[1] = local[40];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[40];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[41];
        t[1] = local[41];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[41];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[42];
        t[1] = local[42];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[42];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[43];
        t[1] = local[43];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[43];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[44];
        t[1] = local[44];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[44];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[45];
        t[1] = local[45];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[45];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[46];
        t[1] = local[46];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[46];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[47];
        t[1] = local[47];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[47];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[48];
        t[1] = local[48];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[48];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[49];
        t[1] = local[49];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[49];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[50];
        t[1] = local[50];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[50];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[51];
        t[1] = local[51];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[51];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[52];
        t[1] = local[52];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[52];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[53];
        t[1] = local[53];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[53];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library MulWadC2 {
    function fold(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s, FriFolding.E memory alpha, FriFolding.E memory acc) public pure returns (FriFolding.E memory) {
        acc = ConstraintEval.fold(acc, alpha, _c0(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c1(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c2(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c3(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c4(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c5(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c6(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c7(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c8(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c9(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c10(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c11(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c12(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c13(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c14(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c15(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c16(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c17(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c18(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c19(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c20(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c21(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c22(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c23(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c24(local, next, pub, s));
        return acc;
    }
    function _pub(uint64 v) private pure returns (FriFolding.E memory) { return FriFolding.E(v, 0); }
    function _c(uint64 v) private pure returns (FriFolding.E memory) { return FriFolding.E(v, 0); }
    function _add(FriFolding.E memory a, FriFolding.E memory b) private pure returns (FriFolding.E memory r) { (r.c0,r.c1)=GoldilocksField.extAdd(a.c0,a.c1,b.c0,b.c1); }
    function _sub(FriFolding.E memory a, FriFolding.E memory b) private pure returns (FriFolding.E memory r) { (r.c0,r.c1)=GoldilocksField.extSub(a.c0,a.c1,b.c0,b.c1); }
    function _mul(FriFolding.E memory a, FriFolding.E memory b) private pure returns (FriFolding.E memory r) { (r.c0,r.c1)=GoldilocksField.extMul(a.c0,a.c1,b.c0,b.c1); }
    function _neg(FriFolding.E memory a) private pure returns (FriFolding.E memory r) { r.c0=GoldilocksField.neg(a.c0); r.c1=GoldilocksField.neg(a.c1); }
    function _c0(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[54];
        t[1] = local[54];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[54];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[55];
        t[1] = local[55];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[55];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[56];
        t[1] = local[56];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[56];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[57];
        t[1] = local[57];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[57];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[58];
        t[1] = local[58];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[58];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[59];
        t[1] = local[59];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[59];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[60];
        t[1] = local[60];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[60];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[61];
        t[1] = local[61];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[61];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[62];
        t[1] = local[62];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[62];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[63];
        t[1] = local[63];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[63];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[64];
        t[1] = local[64];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[64];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[65];
        t[1] = local[65];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[65];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[66];
        t[1] = local[66];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[66];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[67];
        t[1] = local[67];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[67];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[68];
        t[1] = local[68];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[68];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[69];
        t[1] = local[69];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[69];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[70];
        t[1] = local[70];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[70];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[71];
        t[1] = local[71];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[71];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[72];
        t[1] = local[72];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[72];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[73];
        t[1] = local[73];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[73];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[74];
        t[1] = local[74];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[74];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[75];
        t[1] = local[75];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[75];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[76];
        t[1] = local[76];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[76];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[77];
        t[1] = local[77];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[77];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[78];
        t[1] = local[78];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[78];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library MulWadC3 {
    function fold(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s, FriFolding.E memory alpha, FriFolding.E memory acc) public pure returns (FriFolding.E memory) {
        acc = ConstraintEval.fold(acc, alpha, _c0(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c1(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c2(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c3(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c4(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c5(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c6(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c7(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c8(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c9(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c10(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c11(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c12(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c13(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c14(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c15(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c16(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c17(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c18(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c19(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c20(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c21(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c22(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c23(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c24(local, next, pub, s));
        return acc;
    }
    function _pub(uint64 v) private pure returns (FriFolding.E memory) { return FriFolding.E(v, 0); }
    function _c(uint64 v) private pure returns (FriFolding.E memory) { return FriFolding.E(v, 0); }
    function _add(FriFolding.E memory a, FriFolding.E memory b) private pure returns (FriFolding.E memory r) { (r.c0,r.c1)=GoldilocksField.extAdd(a.c0,a.c1,b.c0,b.c1); }
    function _sub(FriFolding.E memory a, FriFolding.E memory b) private pure returns (FriFolding.E memory r) { (r.c0,r.c1)=GoldilocksField.extSub(a.c0,a.c1,b.c0,b.c1); }
    function _mul(FriFolding.E memory a, FriFolding.E memory b) private pure returns (FriFolding.E memory r) { (r.c0,r.c1)=GoldilocksField.extMul(a.c0,a.c1,b.c0,b.c1); }
    function _neg(FriFolding.E memory a) private pure returns (FriFolding.E memory r) { r.c0=GoldilocksField.neg(a.c0); r.c1=GoldilocksField.neg(a.c1); }
    function _c0(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[79];
        t[1] = local[79];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[79];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[80];
        t[1] = local[80];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[80];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[81];
        t[1] = local[81];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[81];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[82];
        t[1] = local[82];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[82];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[83];
        t[1] = local[83];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[83];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[84];
        t[1] = local[84];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[84];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[85];
        t[1] = local[85];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[85];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[86];
        t[1] = local[86];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[86];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[87];
        t[1] = local[87];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[87];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[88];
        t[1] = local[88];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[88];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[89];
        t[1] = local[89];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[89];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[90];
        t[1] = local[90];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[90];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[91];
        t[1] = local[91];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[91];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[92];
        t[1] = local[92];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[92];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[93];
        t[1] = local[93];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[93];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[94];
        t[1] = local[94];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[94];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[95];
        t[1] = local[95];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[95];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[96];
        t[1] = local[96];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[96];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[97];
        t[1] = local[97];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[97];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[98];
        t[1] = local[98];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[98];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[99];
        t[1] = local[99];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[99];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[100];
        t[1] = local[100];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[100];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[101];
        t[1] = local[101];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[101];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[102];
        t[1] = local[102];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[102];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[103];
        t[1] = local[103];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[103];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library MulWadC4 {
    function fold(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s, FriFolding.E memory alpha, FriFolding.E memory acc) public pure returns (FriFolding.E memory) {
        acc = ConstraintEval.fold(acc, alpha, _c0(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c1(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c2(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c3(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c4(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c5(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c6(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c7(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c8(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c9(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c10(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c11(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c12(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c13(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c14(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c15(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c16(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c17(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c18(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c19(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c20(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c21(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c22(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c23(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c24(local, next, pub, s));
        return acc;
    }
    function _pub(uint64 v) private pure returns (FriFolding.E memory) { return FriFolding.E(v, 0); }
    function _c(uint64 v) private pure returns (FriFolding.E memory) { return FriFolding.E(v, 0); }
    function _add(FriFolding.E memory a, FriFolding.E memory b) private pure returns (FriFolding.E memory r) { (r.c0,r.c1)=GoldilocksField.extAdd(a.c0,a.c1,b.c0,b.c1); }
    function _sub(FriFolding.E memory a, FriFolding.E memory b) private pure returns (FriFolding.E memory r) { (r.c0,r.c1)=GoldilocksField.extSub(a.c0,a.c1,b.c0,b.c1); }
    function _mul(FriFolding.E memory a, FriFolding.E memory b) private pure returns (FriFolding.E memory r) { (r.c0,r.c1)=GoldilocksField.extMul(a.c0,a.c1,b.c0,b.c1); }
    function _neg(FriFolding.E memory a) private pure returns (FriFolding.E memory r) { r.c0=GoldilocksField.neg(a.c0); r.c1=GoldilocksField.neg(a.c1); }
    function _c0(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[104];
        t[1] = local[104];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[104];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[105];
        t[1] = local[105];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[105];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[106];
        t[1] = local[106];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[106];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[107];
        t[1] = local[107];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[107];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[108];
        t[1] = local[108];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[108];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[109];
        t[1] = local[109];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[109];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[110];
        t[1] = local[110];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[110];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[111];
        t[1] = local[111];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[111];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[112];
        t[1] = local[112];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[112];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[113];
        t[1] = local[113];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[113];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[114];
        t[1] = local[114];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[114];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[115];
        t[1] = local[115];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[115];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[116];
        t[1] = local[116];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[116];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[117];
        t[1] = local[117];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[117];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[118];
        t[1] = local[118];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[118];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[119];
        t[1] = local[119];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[119];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[120];
        t[1] = local[120];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[120];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[121];
        t[1] = local[121];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[121];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[122];
        t[1] = local[122];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[122];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[123];
        t[1] = local[123];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[123];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[124];
        t[1] = local[124];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[124];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[125];
        t[1] = local[125];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[125];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[126];
        t[1] = local[126];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[126];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[127];
        t[1] = local[127];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[127];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[128];
        t[1] = local[128];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[128];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library MulWadC5 {
    function fold(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s, FriFolding.E memory alpha, FriFolding.E memory acc) public pure returns (FriFolding.E memory) {
        acc = ConstraintEval.fold(acc, alpha, _c0(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c1(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c2(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c3(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c4(local, next, pub, s));
        acc = ConstraintEval.fold(acc, alpha, _c5(local, next, pub, s));
        return acc;
    }
    function _pub(uint64 v) private pure returns (FriFolding.E memory) { return FriFolding.E(v, 0); }
    function _c(uint64 v) private pure returns (FriFolding.E memory) { return FriFolding.E(v, 0); }
    function _add(FriFolding.E memory a, FriFolding.E memory b) private pure returns (FriFolding.E memory r) { (r.c0,r.c1)=GoldilocksField.extAdd(a.c0,a.c1,b.c0,b.c1); }
    function _sub(FriFolding.E memory a, FriFolding.E memory b) private pure returns (FriFolding.E memory r) { (r.c0,r.c1)=GoldilocksField.extSub(a.c0,a.c1,b.c0,b.c1); }
    function _mul(FriFolding.E memory a, FriFolding.E memory b) private pure returns (FriFolding.E memory r) { (r.c0,r.c1)=GoldilocksField.extMul(a.c0,a.c1,b.c0,b.c1); }
    function _neg(FriFolding.E memory a) private pure returns (FriFolding.E memory r) { r.c0=GoldilocksField.neg(a.c0); r.c1=GoldilocksField.neg(a.c1); }
    function _c0(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[129];
        t[1] = local[129];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[129];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](127);
        t[0] = local[0];
        t[1] = local[4];
        t[2] = local[5];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[6];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[7];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[8];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[9];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[10];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[11];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[12];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[13];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[14];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[15];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[16];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[17];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[18];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[19];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[20];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[21];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[22];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[23];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[24];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[25];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[26];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[27];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[28];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[29];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = local[30];
        t[103] = _c(67108864);
        t[104] = _mul(t[102], t[103]);
        t[105] = _add(t[101], t[104]);
        t[106] = local[31];
        t[107] = _c(134217728);
        t[108] = _mul(t[106], t[107]);
        t[109] = _add(t[105], t[108]);
        t[110] = local[32];
        t[111] = _c(268435456);
        t[112] = _mul(t[110], t[111]);
        t[113] = _add(t[109], t[112]);
        t[114] = local[33];
        t[115] = _c(536870912);
        t[116] = _mul(t[114], t[115]);
        t[117] = _add(t[113], t[116]);
        t[118] = local[34];
        t[119] = _c(1073741824);
        t[120] = _mul(t[118], t[119]);
        t[121] = _add(t[117], t[120]);
        t[122] = local[35];
        t[123] = _c(2147483648);
        t[124] = _mul(t[122], t[123]);
        t[125] = _add(t[121], t[124]);
        t[126] = _sub(t[0], t[125]);
        return t[126];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](123);
        t[0] = local[1];
        t[1] = local[36];
        t[2] = local[37];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[38];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[39];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[40];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[41];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[42];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[43];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[44];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[45];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[46];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[47];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[48];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[49];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[50];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[51];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[52];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[53];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[54];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[55];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[56];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[57];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[58];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[59];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[60];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[61];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = local[62];
        t[103] = _c(67108864);
        t[104] = _mul(t[102], t[103]);
        t[105] = _add(t[101], t[104]);
        t[106] = local[63];
        t[107] = _c(134217728);
        t[108] = _mul(t[106], t[107]);
        t[109] = _add(t[105], t[108]);
        t[110] = local[64];
        t[111] = _c(268435456);
        t[112] = _mul(t[110], t[111]);
        t[113] = _add(t[109], t[112]);
        t[114] = local[65];
        t[115] = _c(536870912);
        t[116] = _mul(t[114], t[115]);
        t[117] = _add(t[113], t[116]);
        t[118] = local[66];
        t[119] = _c(1073741824);
        t[120] = _mul(t[118], t[119]);
        t[121] = _add(t[117], t[120]);
        t[122] = _sub(t[0], t[121]);
        return t[122];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](123);
        t[0] = local[2];
        t[1] = local[67];
        t[2] = local[68];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[69];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[70];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[71];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[72];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[73];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[74];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[75];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[76];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[77];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[78];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[79];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[80];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[81];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[82];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[83];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[84];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[85];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[86];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[87];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[88];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[89];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[90];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[91];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[92];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = local[93];
        t[103] = _c(67108864);
        t[104] = _mul(t[102], t[103]);
        t[105] = _add(t[101], t[104]);
        t[106] = local[94];
        t[107] = _c(134217728);
        t[108] = _mul(t[106], t[107]);
        t[109] = _add(t[105], t[108]);
        t[110] = local[95];
        t[111] = _c(268435456);
        t[112] = _mul(t[110], t[111]);
        t[113] = _add(t[109], t[112]);
        t[114] = local[96];
        t[115] = _c(536870912);
        t[116] = _mul(t[114], t[115]);
        t[117] = _add(t[113], t[116]);
        t[118] = local[97];
        t[119] = _c(1073741824);
        t[120] = _mul(t[118], t[119]);
        t[121] = _add(t[117], t[120]);
        t[122] = _sub(t[0], t[121]);
        return t[122];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](127);
        t[0] = local[3];
        t[1] = local[98];
        t[2] = local[99];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[100];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[101];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[102];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[103];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[104];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[105];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[106];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[107];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[108];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[109];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[110];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[111];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[112];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[113];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[114];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[115];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[116];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[117];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[118];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[119];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[120];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[121];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[122];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[123];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = local[124];
        t[103] = _c(67108864);
        t[104] = _mul(t[102], t[103]);
        t[105] = _add(t[101], t[104]);
        t[106] = local[125];
        t[107] = _c(134217728);
        t[108] = _mul(t[106], t[107]);
        t[109] = _add(t[105], t[108]);
        t[110] = local[126];
        t[111] = _c(268435456);
        t[112] = _mul(t[110], t[111]);
        t[113] = _add(t[109], t[112]);
        t[114] = local[127];
        t[115] = _c(536870912);
        t[116] = _mul(t[114], t[115]);
        t[117] = _add(t[113], t[116]);
        t[118] = local[128];
        t[119] = _c(1073741824);
        t[120] = _mul(t[118], t[119]);
        t[121] = _add(t[117], t[120]);
        t[122] = local[129];
        t[123] = _c(2147483648);
        t[124] = _mul(t[122], t[123]);
        t[125] = _add(t[121], t[124]);
        t[126] = _sub(t[0], t[125]);
        return t[126];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](9);
        t[0] = local[0];
        t[1] = local[1];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[2];
        t[4] = _c(4294967296);
        t[5] = _mul(t[3], t[4]);
        t[6] = local[3];
        t[7] = _add(t[5], t[6]);
        t[8] = _sub(t[2], t[7]);
        return t[8];
    }
}

library MulWadConstraints {
    function foldConstraints(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s, FriFolding.E memory alpha) internal view returns (FriFolding.E memory acc) {
        acc = MulWadC0.fold(local, next, pub, s, alpha, acc);
        acc = MulWadC1.fold(local, next, pub, s, alpha, acc);
        acc = MulWadC2.fold(local, next, pub, s, alpha, acc);
        acc = MulWadC3.fold(local, next, pub, s, alpha, acc);
        acc = MulWadC4.fold(local, next, pub, s, alpha, acc);
        acc = MulWadC5.fold(local, next, pub, s, alpha, acc);
    }
}
