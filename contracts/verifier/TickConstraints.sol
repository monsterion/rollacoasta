// AUTO-GENERATED split constraint evaluator for the Tick AIR (973 constraints, 39 chunks)
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;
import "./GoldilocksField.sol";
import "./FriFolding.sol";
import "./ConstraintEval.sol";

library TickC0 {
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
        t[0] = s.isFirst;
        t[1] = local[0];
        t[2] = _pub(pub[0]);
        t[3] = _sub(t[1], t[2]);
        t[4] = _mul(t[0], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = s.isLast;
        t[1] = local[22];
        t[2] = _pub(pub[1]);
        t[3] = _sub(t[1], t[2]);
        t[4] = _mul(t[0], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = s.isTransition;
        t[1] = next[0];
        t[2] = local[22];
        t[3] = _sub(t[1], t[2]);
        t[4] = _mul(t[0], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[5];
        t[1] = local[5];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[5];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[453];
        t[1] = local[453];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[453];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[454];
        t[1] = local[454];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[454];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[455];
        t[1] = local[455];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[455];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[456];
        t[1] = local[456];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[456];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[457];
        t[1] = local[457];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[457];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[458];
        t[1] = local[458];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[458];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[459];
        t[1] = local[459];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[459];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[460];
        t[1] = local[460];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[460];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[461];
        t[1] = local[461];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[461];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[462];
        t[1] = local[462];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[462];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[463];
        t[1] = local[463];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[463];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[464];
        t[1] = local[464];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[464];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[465];
        t[1] = local[465];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[465];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[466];
        t[1] = local[466];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[466];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[467];
        t[1] = local[467];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[467];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[468];
        t[1] = local[468];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[468];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[469];
        t[1] = local[469];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[469];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[470];
        t[1] = local[470];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[470];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[471];
        t[1] = local[471];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[471];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[472];
        t[1] = local[472];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[472];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[473];
        t[1] = local[473];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[473];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC1 {
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
        t[0] = local[474];
        t[1] = local[474];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[474];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[475];
        t[1] = local[475];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[475];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[476];
        t[1] = local[476];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[476];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[477];
        t[1] = local[477];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[477];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[478];
        t[1] = local[478];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[478];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[479];
        t[1] = local[479];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[479];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[480];
        t[1] = local[480];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[480];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[481];
        t[1] = local[481];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[481];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[482];
        t[1] = local[482];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[482];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](119);
        t[0] = local[25];
        t[1] = local[453];
        t[2] = local[454];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[455];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[456];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[457];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[458];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[459];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[460];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[461];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[462];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[463];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[464];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[465];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[466];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[467];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[468];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[469];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[470];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[471];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[472];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[473];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[474];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[475];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[476];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[477];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[478];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = local[479];
        t[103] = _c(67108864);
        t[104] = _mul(t[102], t[103]);
        t[105] = _add(t[101], t[104]);
        t[106] = local[480];
        t[107] = _c(134217728);
        t[108] = _mul(t[106], t[107]);
        t[109] = _add(t[105], t[108]);
        t[110] = local[481];
        t[111] = _c(268435456);
        t[112] = _mul(t[110], t[111]);
        t[113] = _add(t[109], t[112]);
        t[114] = local[482];
        t[115] = _c(536870912);
        t[116] = _mul(t[114], t[115]);
        t[117] = _add(t[113], t[116]);
        t[118] = _sub(t[0], t[117]);
        return t[118];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[483];
        t[1] = local[483];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[483];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[484];
        t[1] = local[484];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[484];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[485];
        t[1] = local[485];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[485];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[486];
        t[1] = local[486];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[486];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[487];
        t[1] = local[487];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[487];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[488];
        t[1] = local[488];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[488];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[489];
        t[1] = local[489];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[489];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[490];
        t[1] = local[490];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[490];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[491];
        t[1] = local[491];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[491];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[492];
        t[1] = local[492];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[492];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[493];
        t[1] = local[493];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[493];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](43);
        t[0] = local[26];
        t[1] = local[483];
        t[2] = local[484];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[485];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[486];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[487];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[488];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[489];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[490];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[491];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[492];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[493];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = _sub(t[0], t[41]);
        return t[42];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[494];
        t[1] = local[494];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[494];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[495];
        t[1] = local[495];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[495];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[496];
        t[1] = local[496];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[496];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC2 {
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
        t[0] = local[497];
        t[1] = local[497];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[497];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[498];
        t[1] = local[498];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[498];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[499];
        t[1] = local[499];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[499];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[500];
        t[1] = local[500];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[500];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[501];
        t[1] = local[501];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[501];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[502];
        t[1] = local[502];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[502];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[503];
        t[1] = local[503];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[503];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[504];
        t[1] = local[504];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[504];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](43);
        t[0] = local[27];
        t[1] = local[494];
        t[2] = local[495];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[496];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[497];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[498];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[499];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[500];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[501];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[502];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[503];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[504];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = _sub(t[0], t[41]);
        return t[42];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[27];
        t[1] = _c(1399);
        t[2] = local[26];
        t[3] = _sub(t[1], t[2]);
        t[4] = _sub(t[0], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](7);
        t[0] = local[4];
        t[1] = local[25];
        t[2] = _c(1400);
        t[3] = _mul(t[1], t[2]);
        t[4] = local[26];
        t[5] = _add(t[3], t[4]);
        t[6] = _sub(t[0], t[5]);
        return t[6];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[505];
        t[1] = local[505];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[505];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[506];
        t[1] = local[506];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[506];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[507];
        t[1] = local[507];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[507];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[508];
        t[1] = local[508];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[508];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[509];
        t[1] = local[509];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[509];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[510];
        t[1] = local[510];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[510];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[511];
        t[1] = local[511];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[511];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[512];
        t[1] = local[512];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[512];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[513];
        t[1] = local[513];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[513];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[514];
        t[1] = local[514];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[514];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[515];
        t[1] = local[515];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[515];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[516];
        t[1] = local[516];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[516];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[517];
        t[1] = local[517];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[517];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[518];
        t[1] = local[518];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[518];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC3 {
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
        t[0] = local[519];
        t[1] = local[519];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[519];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[520];
        t[1] = local[520];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[520];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[521];
        t[1] = local[521];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[521];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[522];
        t[1] = local[522];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[522];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[523];
        t[1] = local[523];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[523];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[524];
        t[1] = local[524];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[524];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[525];
        t[1] = local[525];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[525];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[526];
        t[1] = local[526];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[526];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[527];
        t[1] = local[527];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[527];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[528];
        t[1] = local[528];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[528];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[529];
        t[1] = local[529];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[529];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[530];
        t[1] = local[530];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[530];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[531];
        t[1] = local[531];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[531];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[532];
        t[1] = local[532];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[532];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[533];
        t[1] = local[533];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[533];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](115);
        t[0] = local[28];
        t[1] = local[505];
        t[2] = local[506];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[507];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[508];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[509];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[510];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[511];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[512];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[513];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[514];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[515];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[516];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[517];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[518];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[519];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[520];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[521];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[522];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[523];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[524];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[525];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[526];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[527];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[528];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[529];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[530];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = local[531];
        t[103] = _c(67108864);
        t[104] = _mul(t[102], t[103]);
        t[105] = _add(t[101], t[104]);
        t[106] = local[532];
        t[107] = _c(134217728);
        t[108] = _mul(t[106], t[107]);
        t[109] = _add(t[105], t[108]);
        t[110] = local[533];
        t[111] = _c(268435456);
        t[112] = _mul(t[110], t[111]);
        t[113] = _add(t[109], t[112]);
        t[114] = _sub(t[0], t[113]);
        return t[114];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[534];
        t[1] = local[534];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[534];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[535];
        t[1] = local[535];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[535];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[536];
        t[1] = local[536];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[536];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[537];
        t[1] = local[537];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[537];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[538];
        t[1] = local[538];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[538];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[539];
        t[1] = local[539];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[539];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[540];
        t[1] = local[540];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[540];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[541];
        t[1] = local[541];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[541];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[542];
        t[1] = local[542];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[542];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC4 {
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
        t[0] = local[543];
        t[1] = local[543];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[543];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[544];
        t[1] = local[544];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[544];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[545];
        t[1] = local[545];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[545];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[546];
        t[1] = local[546];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[546];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[547];
        t[1] = local[547];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[547];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[548];
        t[1] = local[548];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[548];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[549];
        t[1] = local[549];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[549];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[550];
        t[1] = local[550];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[550];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[551];
        t[1] = local[551];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[551];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[552];
        t[1] = local[552];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[552];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[553];
        t[1] = local[553];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[553];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[554];
        t[1] = local[554];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[554];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[555];
        t[1] = local[555];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[555];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[556];
        t[1] = local[556];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[556];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[557];
        t[1] = local[557];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[557];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[558];
        t[1] = local[558];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[558];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[559];
        t[1] = local[559];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[559];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[560];
        t[1] = local[560];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[560];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[561];
        t[1] = local[561];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[561];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[562];
        t[1] = local[562];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[562];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[563];
        t[1] = local[563];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[563];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](119);
        t[0] = local[29];
        t[1] = local[534];
        t[2] = local[535];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[536];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[537];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[538];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[539];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[540];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[541];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[542];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[543];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[544];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[545];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[546];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[547];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[548];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[549];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[550];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[551];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[552];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[553];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[554];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[555];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[556];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[557];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[558];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[559];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = local[560];
        t[103] = _c(67108864);
        t[104] = _mul(t[102], t[103]);
        t[105] = _add(t[101], t[104]);
        t[106] = local[561];
        t[107] = _c(134217728);
        t[108] = _mul(t[106], t[107]);
        t[109] = _add(t[105], t[108]);
        t[110] = local[562];
        t[111] = _c(268435456);
        t[112] = _mul(t[110], t[111]);
        t[113] = _add(t[109], t[112]);
        t[114] = local[563];
        t[115] = _c(536870912);
        t[116] = _mul(t[114], t[115]);
        t[117] = _add(t[113], t[116]);
        t[118] = _sub(t[0], t[117]);
        return t[118];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[564];
        t[1] = local[564];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[564];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[565];
        t[1] = local[565];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[565];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[566];
        t[1] = local[566];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[566];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC5 {
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
        t[0] = local[567];
        t[1] = local[567];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[567];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[568];
        t[1] = local[568];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[568];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[569];
        t[1] = local[569];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[569];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[570];
        t[1] = local[570];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[570];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[571];
        t[1] = local[571];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[571];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[572];
        t[1] = local[572];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[572];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[573];
        t[1] = local[573];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[573];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[574];
        t[1] = local[574];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[574];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[575];
        t[1] = local[575];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[575];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[576];
        t[1] = local[576];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[576];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[577];
        t[1] = local[577];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[577];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[578];
        t[1] = local[578];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[578];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[579];
        t[1] = local[579];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[579];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[580];
        t[1] = local[580];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[580];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[581];
        t[1] = local[581];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[581];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[582];
        t[1] = local[582];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[582];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[583];
        t[1] = local[583];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[583];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[584];
        t[1] = local[584];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[584];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[585];
        t[1] = local[585];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[585];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[586];
        t[1] = local[586];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[586];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[587];
        t[1] = local[587];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[587];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[588];
        t[1] = local[588];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[588];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[589];
        t[1] = local[589];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[589];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[590];
        t[1] = local[590];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[590];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[591];
        t[1] = local[591];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[591];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC6 {
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
        t[0] = local[592];
        t[1] = local[592];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[592];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](115);
        t[0] = local[30];
        t[1] = local[564];
        t[2] = local[565];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[566];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[567];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[568];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[569];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[570];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[571];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[572];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[573];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[574];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[575];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[576];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[577];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[578];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[579];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[580];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[581];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[582];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[583];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[584];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[585];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[586];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[587];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[588];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[589];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = local[590];
        t[103] = _c(67108864);
        t[104] = _mul(t[102], t[103]);
        t[105] = _add(t[101], t[104]);
        t[106] = local[591];
        t[107] = _c(134217728);
        t[108] = _mul(t[106], t[107]);
        t[109] = _add(t[105], t[108]);
        t[110] = local[592];
        t[111] = _c(268435456);
        t[112] = _mul(t[110], t[111]);
        t[113] = _add(t[109], t[112]);
        t[114] = _sub(t[0], t[113]);
        return t[114];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[28];
        t[1] = local[29];
        t[2] = _add(t[0], t[1]);
        t[3] = local[25];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[30];
        t[1] = _c(343597384);
        t[2] = local[28];
        t[3] = _sub(t[1], t[2]);
        t[4] = _sub(t[0], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](3);
        t[0] = local[29];
        t[1] = local[30];
        t[2] = _mul(t[0], t[1]);
        return t[2];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[593];
        t[1] = local[593];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[593];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[594];
        t[1] = local[594];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[594];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[595];
        t[1] = local[595];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[595];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[596];
        t[1] = local[596];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[596];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[597];
        t[1] = local[597];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[597];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[598];
        t[1] = local[598];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[598];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[599];
        t[1] = local[599];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[599];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[600];
        t[1] = local[600];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[600];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[601];
        t[1] = local[601];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[601];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[602];
        t[1] = local[602];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[602];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[603];
        t[1] = local[603];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[603];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[604];
        t[1] = local[604];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[604];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[605];
        t[1] = local[605];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[605];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[606];
        t[1] = local[606];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[606];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[607];
        t[1] = local[607];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[607];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[608];
        t[1] = local[608];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[608];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[609];
        t[1] = local[609];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[609];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[610];
        t[1] = local[610];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[610];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[611];
        t[1] = local[611];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[611];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[612];
        t[1] = local[612];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[612];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC7 {
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
        t[0] = local[613];
        t[1] = local[613];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[613];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[614];
        t[1] = local[614];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[614];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[615];
        t[1] = local[615];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[615];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[616];
        t[1] = local[616];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[616];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[617];
        t[1] = local[617];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[617];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[618];
        t[1] = local[618];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[618];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[619];
        t[1] = local[619];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[619];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](107);
        t[0] = local[31];
        t[1] = local[593];
        t[2] = local[594];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[595];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[596];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[597];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[598];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[599];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[600];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[601];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[602];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[603];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[604];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[605];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[606];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[607];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[608];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[609];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[610];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[611];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[612];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[613];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[614];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[615];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[616];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[617];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[618];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = local[619];
        t[103] = _c(67108864);
        t[104] = _mul(t[102], t[103]);
        t[105] = _add(t[101], t[104]);
        t[106] = _sub(t[0], t[105]);
        return t[106];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[620];
        t[1] = local[620];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[620];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[621];
        t[1] = local[621];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[621];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[622];
        t[1] = local[622];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[622];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[623];
        t[1] = local[623];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[623];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[624];
        t[1] = local[624];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[624];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[625];
        t[1] = local[625];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[625];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[626];
        t[1] = local[626];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[626];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[627];
        t[1] = local[627];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[627];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[628];
        t[1] = local[628];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[628];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[629];
        t[1] = local[629];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[629];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[630];
        t[1] = local[630];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[630];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[631];
        t[1] = local[631];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[631];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[632];
        t[1] = local[632];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[632];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[633];
        t[1] = local[633];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[633];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[634];
        t[1] = local[634];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[634];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[635];
        t[1] = local[635];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[635];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[636];
        t[1] = local[636];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[636];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC8 {
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
        t[0] = local[637];
        t[1] = local[637];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[637];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[638];
        t[1] = local[638];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[638];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[639];
        t[1] = local[639];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[639];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[640];
        t[1] = local[640];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[640];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[641];
        t[1] = local[641];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[641];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[642];
        t[1] = local[642];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[642];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[643];
        t[1] = local[643];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[643];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[644];
        t[1] = local[644];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[644];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[645];
        t[1] = local[645];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[645];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[646];
        t[1] = local[646];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[646];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[647];
        t[1] = local[647];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[647];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[648];
        t[1] = local[648];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[648];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[649];
        t[1] = local[649];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[649];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[650];
        t[1] = local[650];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[650];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[651];
        t[1] = local[651];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[651];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](127);
        t[0] = local[32];
        t[1] = local[620];
        t[2] = local[621];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[622];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[623];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[624];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[625];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[626];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[627];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[628];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[629];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[630];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[631];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[632];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[633];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[634];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[635];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[636];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[637];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[638];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[639];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[640];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[641];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[642];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[643];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[644];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[645];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = local[646];
        t[103] = _c(67108864);
        t[104] = _mul(t[102], t[103]);
        t[105] = _add(t[101], t[104]);
        t[106] = local[647];
        t[107] = _c(134217728);
        t[108] = _mul(t[106], t[107]);
        t[109] = _add(t[105], t[108]);
        t[110] = local[648];
        t[111] = _c(268435456);
        t[112] = _mul(t[110], t[111]);
        t[113] = _add(t[109], t[112]);
        t[114] = local[649];
        t[115] = _c(536870912);
        t[116] = _mul(t[114], t[115]);
        t[117] = _add(t[113], t[116]);
        t[118] = local[650];
        t[119] = _c(1073741824);
        t[120] = _mul(t[118], t[119]);
        t[121] = _add(t[117], t[120]);
        t[122] = local[651];
        t[123] = _c(2147483648);
        t[124] = _mul(t[122], t[123]);
        t[125] = _add(t[121], t[124]);
        t[126] = _sub(t[0], t[125]);
        return t[126];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](9);
        t[0] = _c(1073741824);
        t[1] = local[28];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[31];
        t[4] = _c(4294967296);
        t[5] = _mul(t[3], t[4]);
        t[6] = local[32];
        t[7] = _add(t[5], t[6]);
        t[8] = _sub(t[2], t[7]);
        return t[8];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[652];
        t[1] = local[652];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[652];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[653];
        t[1] = local[653];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[653];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[654];
        t[1] = local[654];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[654];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[655];
        t[1] = local[655];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[655];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[656];
        t[1] = local[656];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[656];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[657];
        t[1] = local[657];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[657];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[658];
        t[1] = local[658];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[658];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[659];
        t[1] = local[659];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[659];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC9 {
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
        t[0] = local[660];
        t[1] = local[660];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[660];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[661];
        t[1] = local[661];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[661];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[662];
        t[1] = local[662];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[662];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[663];
        t[1] = local[663];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[663];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[664];
        t[1] = local[664];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[664];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[665];
        t[1] = local[665];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[665];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[666];
        t[1] = local[666];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[666];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[667];
        t[1] = local[667];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[667];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[668];
        t[1] = local[668];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[668];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[669];
        t[1] = local[669];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[669];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[670];
        t[1] = local[670];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[670];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[671];
        t[1] = local[671];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[671];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[672];
        t[1] = local[672];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[672];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[673];
        t[1] = local[673];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[673];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[674];
        t[1] = local[674];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[674];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[675];
        t[1] = local[675];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[675];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[676];
        t[1] = local[676];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[676];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[677];
        t[1] = local[677];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[677];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[678];
        t[1] = local[678];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[678];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[679];
        t[1] = local[679];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[679];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[680];
        t[1] = local[680];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[680];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[681];
        t[1] = local[681];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[681];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](119);
        t[0] = local[33];
        t[1] = local[652];
        t[2] = local[653];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[654];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[655];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[656];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[657];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[658];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[659];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[660];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[661];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[662];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[663];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[664];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[665];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[666];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[667];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[668];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[669];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[670];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[671];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[672];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[673];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[674];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[675];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[676];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[677];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = local[678];
        t[103] = _c(67108864);
        t[104] = _mul(t[102], t[103]);
        t[105] = _add(t[101], t[104]);
        t[106] = local[679];
        t[107] = _c(134217728);
        t[108] = _mul(t[106], t[107]);
        t[109] = _add(t[105], t[108]);
        t[110] = local[680];
        t[111] = _c(268435456);
        t[112] = _mul(t[110], t[111]);
        t[113] = _add(t[109], t[112]);
        t[114] = local[681];
        t[115] = _c(536870912);
        t[116] = _mul(t[114], t[115]);
        t[117] = _add(t[113], t[116]);
        t[118] = _sub(t[0], t[117]);
        return t[118];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[682];
        t[1] = local[682];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[682];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[683];
        t[1] = local[683];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[683];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC10 {
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
        t[0] = local[684];
        t[1] = local[684];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[684];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[685];
        t[1] = local[685];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[685];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[686];
        t[1] = local[686];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[686];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[687];
        t[1] = local[687];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[687];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[688];
        t[1] = local[688];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[688];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[689];
        t[1] = local[689];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[689];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[690];
        t[1] = local[690];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[690];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[691];
        t[1] = local[691];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[691];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[692];
        t[1] = local[692];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[692];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[693];
        t[1] = local[693];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[693];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[694];
        t[1] = local[694];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[694];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[695];
        t[1] = local[695];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[695];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[696];
        t[1] = local[696];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[696];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[697];
        t[1] = local[697];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[697];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[698];
        t[1] = local[698];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[698];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[699];
        t[1] = local[699];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[699];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[700];
        t[1] = local[700];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[700];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[701];
        t[1] = local[701];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[701];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[702];
        t[1] = local[702];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[702];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[703];
        t[1] = local[703];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[703];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[704];
        t[1] = local[704];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[704];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[705];
        t[1] = local[705];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[705];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[706];
        t[1] = local[706];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[706];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[707];
        t[1] = local[707];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[707];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[708];
        t[1] = local[708];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[708];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC11 {
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
        t[0] = local[709];
        t[1] = local[709];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[709];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[710];
        t[1] = local[710];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[710];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[711];
        t[1] = local[711];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[711];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[712];
        t[1] = local[712];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[712];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[713];
        t[1] = local[713];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[713];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](127);
        t[0] = local[34];
        t[1] = local[682];
        t[2] = local[683];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[684];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[685];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[686];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[687];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[688];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[689];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[690];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[691];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[692];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[693];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[694];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[695];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[696];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[697];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[698];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[699];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[700];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[701];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[702];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[703];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[704];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[705];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[706];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[707];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = local[708];
        t[103] = _c(67108864);
        t[104] = _mul(t[102], t[103]);
        t[105] = _add(t[101], t[104]);
        t[106] = local[709];
        t[107] = _c(134217728);
        t[108] = _mul(t[106], t[107]);
        t[109] = _add(t[105], t[108]);
        t[110] = local[710];
        t[111] = _c(268435456);
        t[112] = _mul(t[110], t[111]);
        t[113] = _add(t[109], t[112]);
        t[114] = local[711];
        t[115] = _c(536870912);
        t[116] = _mul(t[114], t[115]);
        t[117] = _add(t[113], t[116]);
        t[118] = local[712];
        t[119] = _c(1073741824);
        t[120] = _mul(t[118], t[119]);
        t[121] = _add(t[117], t[120]);
        t[122] = local[713];
        t[123] = _c(2147483648);
        t[124] = _mul(t[122], t[123]);
        t[125] = _add(t[121], t[124]);
        t[126] = _sub(t[0], t[125]);
        return t[126];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](9);
        t[0] = _c(2405181686);
        t[1] = local[29];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[33];
        t[4] = _c(4294967296);
        t[5] = _mul(t[3], t[4]);
        t[6] = local[34];
        t[7] = _add(t[5], t[6]);
        t[8] = _sub(t[2], t[7]);
        return t[8];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[35];
        t[1] = local[31];
        t[2] = local[33];
        t[3] = _add(t[1], t[2]);
        t[4] = _sub(t[0], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[714];
        t[1] = local[714];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[714];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[715];
        t[1] = local[715];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[715];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[716];
        t[1] = local[716];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[716];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[717];
        t[1] = local[717];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[717];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[718];
        t[1] = local[718];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[718];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[719];
        t[1] = local[719];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[719];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[720];
        t[1] = local[720];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[720];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[721];
        t[1] = local[721];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[721];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[722];
        t[1] = local[722];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[722];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[723];
        t[1] = local[723];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[723];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[724];
        t[1] = local[724];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[724];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[725];
        t[1] = local[725];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[725];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[726];
        t[1] = local[726];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[726];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[727];
        t[1] = local[727];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[727];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[728];
        t[1] = local[728];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[728];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[729];
        t[1] = local[729];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[729];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[730];
        t[1] = local[730];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[730];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC12 {
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
        t[0] = local[731];
        t[1] = local[731];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[731];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[732];
        t[1] = local[732];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[732];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[733];
        t[1] = local[733];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[733];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[734];
        t[1] = local[734];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[734];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[735];
        t[1] = local[735];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[735];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[736];
        t[1] = local[736];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[736];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[737];
        t[1] = local[737];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[737];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[738];
        t[1] = local[738];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[738];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[739];
        t[1] = local[739];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[739];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[740];
        t[1] = local[740];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[740];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[741];
        t[1] = local[741];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[741];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](111);
        t[0] = local[36];
        t[1] = local[714];
        t[2] = local[715];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[716];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[717];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[718];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[719];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[720];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[721];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[722];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[723];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[724];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[725];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[726];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[727];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[728];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[729];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[730];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[731];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[732];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[733];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[734];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[735];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[736];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[737];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[738];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[739];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = local[740];
        t[103] = _c(67108864);
        t[104] = _mul(t[102], t[103]);
        t[105] = _add(t[101], t[104]);
        t[106] = local[741];
        t[107] = _c(134217728);
        t[108] = _mul(t[106], t[107]);
        t[109] = _add(t[105], t[108]);
        t[110] = _sub(t[0], t[109]);
        return t[110];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[742];
        t[1] = local[742];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[742];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[743];
        t[1] = local[743];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[743];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[744];
        t[1] = local[744];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[744];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[745];
        t[1] = local[745];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[745];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[746];
        t[1] = local[746];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[746];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[747];
        t[1] = local[747];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[747];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[748];
        t[1] = local[748];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[748];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[749];
        t[1] = local[749];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[749];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[750];
        t[1] = local[750];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[750];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[751];
        t[1] = local[751];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[751];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[752];
        t[1] = local[752];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[752];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[753];
        t[1] = local[753];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[753];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[754];
        t[1] = local[754];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[754];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC13 {
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
        t[0] = local[755];
        t[1] = local[755];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[755];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[756];
        t[1] = local[756];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[756];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[757];
        t[1] = local[757];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[757];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[758];
        t[1] = local[758];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[758];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[759];
        t[1] = local[759];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[759];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[760];
        t[1] = local[760];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[760];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[761];
        t[1] = local[761];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[761];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[762];
        t[1] = local[762];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[762];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[763];
        t[1] = local[763];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[763];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[764];
        t[1] = local[764];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[764];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[765];
        t[1] = local[765];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[765];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[766];
        t[1] = local[766];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[766];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[767];
        t[1] = local[767];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[767];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[768];
        t[1] = local[768];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[768];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[769];
        t[1] = local[769];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[769];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[770];
        t[1] = local[770];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[770];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[771];
        t[1] = local[771];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[771];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[772];
        t[1] = local[772];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[772];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[773];
        t[1] = local[773];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[773];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](127);
        t[0] = local[37];
        t[1] = local[742];
        t[2] = local[743];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[744];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[745];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[746];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[747];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[748];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[749];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[750];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[751];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[752];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[753];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[754];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[755];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[756];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[757];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[758];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[759];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[760];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[761];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[762];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[763];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[764];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[765];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[766];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[767];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = local[768];
        t[103] = _c(67108864);
        t[104] = _mul(t[102], t[103]);
        t[105] = _add(t[101], t[104]);
        t[106] = local[769];
        t[107] = _c(134217728);
        t[108] = _mul(t[106], t[107]);
        t[109] = _add(t[105], t[108]);
        t[110] = local[770];
        t[111] = _c(268435456);
        t[112] = _mul(t[110], t[111]);
        t[113] = _add(t[109], t[112]);
        t[114] = local[771];
        t[115] = _c(536870912);
        t[116] = _mul(t[114], t[115]);
        t[117] = _add(t[113], t[116]);
        t[118] = local[772];
        t[119] = _c(1073741824);
        t[120] = _mul(t[118], t[119]);
        t[121] = _add(t[117], t[120]);
        t[122] = local[773];
        t[123] = _c(2147483648);
        t[124] = _mul(t[122], t[123]);
        t[125] = _add(t[121], t[124]);
        t[126] = _sub(t[0], t[125]);
        return t[126];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](9);
        t[0] = _c(214748365);
        t[1] = local[35];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[36];
        t[4] = _c(4294967296);
        t[5] = _mul(t[3], t[4]);
        t[6] = local[37];
        t[7] = _add(t[5], t[6]);
        t[8] = _sub(t[2], t[7]);
        return t[8];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[774];
        t[1] = local[774];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[774];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[775];
        t[1] = local[775];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[775];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[776];
        t[1] = local[776];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[776];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[777];
        t[1] = local[777];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[777];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC14 {
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
        t[0] = local[778];
        t[1] = local[778];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[778];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[779];
        t[1] = local[779];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[779];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[780];
        t[1] = local[780];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[780];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[781];
        t[1] = local[781];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[781];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[782];
        t[1] = local[782];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[782];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[783];
        t[1] = local[783];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[783];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[784];
        t[1] = local[784];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[784];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[785];
        t[1] = local[785];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[785];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[786];
        t[1] = local[786];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[786];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[787];
        t[1] = local[787];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[787];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[788];
        t[1] = local[788];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[788];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[789];
        t[1] = local[789];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[789];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[790];
        t[1] = local[790];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[790];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[791];
        t[1] = local[791];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[791];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[792];
        t[1] = local[792];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[792];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[793];
        t[1] = local[793];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[793];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[794];
        t[1] = local[794];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[794];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[795];
        t[1] = local[795];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[795];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[796];
        t[1] = local[796];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[796];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[797];
        t[1] = local[797];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[797];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[798];
        t[1] = local[798];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[798];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[799];
        t[1] = local[799];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[799];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](103);
        t[0] = local[38];
        t[1] = local[774];
        t[2] = local[775];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[776];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[777];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[778];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[779];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[780];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[781];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[782];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[783];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[784];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[785];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[786];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[787];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[788];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[789];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[790];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[791];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[792];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[793];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[794];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[795];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[796];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[797];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[798];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[799];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = _sub(t[0], t[101]);
        return t[102];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[800];
        t[1] = local[800];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[800];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[801];
        t[1] = local[801];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[801];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC15 {
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
        t[0] = local[802];
        t[1] = local[802];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[802];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[803];
        t[1] = local[803];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[803];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[804];
        t[1] = local[804];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[804];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[805];
        t[1] = local[805];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[805];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[806];
        t[1] = local[806];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[806];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[807];
        t[1] = local[807];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[807];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[808];
        t[1] = local[808];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[808];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[809];
        t[1] = local[809];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[809];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[810];
        t[1] = local[810];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[810];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[811];
        t[1] = local[811];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[811];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[812];
        t[1] = local[812];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[812];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[813];
        t[1] = local[813];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[813];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[814];
        t[1] = local[814];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[814];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[815];
        t[1] = local[815];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[815];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[816];
        t[1] = local[816];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[816];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[817];
        t[1] = local[817];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[817];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[818];
        t[1] = local[818];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[818];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[819];
        t[1] = local[819];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[819];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[820];
        t[1] = local[820];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[820];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[821];
        t[1] = local[821];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[821];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[822];
        t[1] = local[822];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[822];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[823];
        t[1] = local[823];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[823];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[824];
        t[1] = local[824];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[824];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[825];
        t[1] = local[825];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[825];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[826];
        t[1] = local[826];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[826];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC16 {
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
        t[0] = local[827];
        t[1] = local[827];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[827];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[828];
        t[1] = local[828];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[828];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[829];
        t[1] = local[829];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[829];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[830];
        t[1] = local[830];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[830];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[831];
        t[1] = local[831];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[831];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](127);
        t[0] = local[39];
        t[1] = local[800];
        t[2] = local[801];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[802];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[803];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[804];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[805];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[806];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[807];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[808];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[809];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[810];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[811];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[812];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[813];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[814];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[815];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[816];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[817];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[818];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[819];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[820];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[821];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[822];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[823];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[824];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[825];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = local[826];
        t[103] = _c(67108864);
        t[104] = _mul(t[102], t[103]);
        t[105] = _add(t[101], t[104]);
        t[106] = local[827];
        t[107] = _c(134217728);
        t[108] = _mul(t[106], t[107]);
        t[109] = _add(t[105], t[108]);
        t[110] = local[828];
        t[111] = _c(268435456);
        t[112] = _mul(t[110], t[111]);
        t[113] = _add(t[109], t[112]);
        t[114] = local[829];
        t[115] = _c(536870912);
        t[116] = _mul(t[114], t[115]);
        t[117] = _add(t[113], t[116]);
        t[118] = local[830];
        t[119] = _c(1073741824);
        t[120] = _mul(t[118], t[119]);
        t[121] = _add(t[117], t[120]);
        t[122] = local[831];
        t[123] = _c(2147483648);
        t[124] = _mul(t[122], t[123]);
        t[125] = _add(t[121], t[124]);
        t[126] = _sub(t[0], t[125]);
        return t[126];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](9);
        t[0] = _c(70866960);
        t[1] = local[25];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[38];
        t[4] = _c(4294967296);
        t[5] = _mul(t[3], t[4]);
        t[6] = local[39];
        t[7] = _add(t[5], t[6]);
        t[8] = _sub(t[2], t[7]);
        return t[8];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](11);
        t[0] = local[8];
        t[1] = _c(2);
        t[2] = local[5];
        t[3] = _mul(t[1], t[2]);
        t[4] = _c(1);
        t[5] = _sub(t[3], t[4]);
        t[6] = local[36];
        t[7] = local[38];
        t[8] = _sub(t[6], t[7]);
        t[9] = _mul(t[5], t[8]);
        t[10] = _sub(t[0], t[9]);
        return t[10];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[832];
        t[1] = local[832];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[832];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[833];
        t[1] = local[833];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[833];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[834];
        t[1] = local[834];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[834];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[835];
        t[1] = local[835];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[835];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[836];
        t[1] = local[836];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[836];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[837];
        t[1] = local[837];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[837];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[838];
        t[1] = local[838];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[838];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[839];
        t[1] = local[839];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[839];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[840];
        t[1] = local[840];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[840];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[841];
        t[1] = local[841];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[841];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[842];
        t[1] = local[842];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[842];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[843];
        t[1] = local[843];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[843];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[844];
        t[1] = local[844];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[844];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[845];
        t[1] = local[845];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[845];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[846];
        t[1] = local[846];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[846];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[847];
        t[1] = local[847];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[847];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[848];
        t[1] = local[848];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[848];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC17 {
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
        t[0] = local[849];
        t[1] = local[849];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[849];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[850];
        t[1] = local[850];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[850];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[851];
        t[1] = local[851];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[851];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[852];
        t[1] = local[852];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[852];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[853];
        t[1] = local[853];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[853];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[854];
        t[1] = local[854];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[854];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[855];
        t[1] = local[855];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[855];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[856];
        t[1] = local[856];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[856];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[857];
        t[1] = local[857];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[857];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[858];
        t[1] = local[858];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[858];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[859];
        t[1] = local[859];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[859];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[860];
        t[1] = local[860];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[860];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[861];
        t[1] = local[861];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[861];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[862];
        t[1] = local[862];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[862];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[863];
        t[1] = local[863];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[863];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[864];
        t[1] = local[864];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[864];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[865];
        t[1] = local[865];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[865];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[866];
        t[1] = local[866];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[866];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[867];
        t[1] = local[867];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[867];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](143);
        t[0] = local[6];
        t[1] = local[832];
        t[2] = local[833];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[834];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[835];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[836];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[837];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[838];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[839];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[840];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[841];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[842];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[843];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[844];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[845];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[846];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[847];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[848];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[849];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[850];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[851];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[852];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[853];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[854];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[855];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[856];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[857];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = local[858];
        t[103] = _c(67108864);
        t[104] = _mul(t[102], t[103]);
        t[105] = _add(t[101], t[104]);
        t[106] = local[859];
        t[107] = _c(134217728);
        t[108] = _mul(t[106], t[107]);
        t[109] = _add(t[105], t[108]);
        t[110] = local[860];
        t[111] = _c(268435456);
        t[112] = _mul(t[110], t[111]);
        t[113] = _add(t[109], t[112]);
        t[114] = local[861];
        t[115] = _c(536870912);
        t[116] = _mul(t[114], t[115]);
        t[117] = _add(t[113], t[116]);
        t[118] = local[862];
        t[119] = _c(1073741824);
        t[120] = _mul(t[118], t[119]);
        t[121] = _add(t[117], t[120]);
        t[122] = local[863];
        t[123] = _c(2147483648);
        t[124] = _mul(t[122], t[123]);
        t[125] = _add(t[121], t[124]);
        t[126] = local[864];
        t[127] = _c(4294967296);
        t[128] = _mul(t[126], t[127]);
        t[129] = _add(t[125], t[128]);
        t[130] = local[865];
        t[131] = _c(8589934592);
        t[132] = _mul(t[130], t[131]);
        t[133] = _add(t[129], t[132]);
        t[134] = local[866];
        t[135] = _c(17179869184);
        t[136] = _mul(t[134], t[135]);
        t[137] = _add(t[133], t[136]);
        t[138] = local[867];
        t[139] = _c(34359738368);
        t[140] = _mul(t[138], t[139]);
        t[141] = _add(t[137], t[140]);
        t[142] = _sub(t[0], t[141]);
        return t[142];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[868];
        t[1] = local[868];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[868];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[869];
        t[1] = local[869];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[869];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[870];
        t[1] = local[870];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[870];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[871];
        t[1] = local[871];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[871];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[872];
        t[1] = local[872];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[872];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC18 {
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
        t[0] = local[873];
        t[1] = local[873];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[873];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[874];
        t[1] = local[874];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[874];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[875];
        t[1] = local[875];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[875];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[876];
        t[1] = local[876];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[876];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[877];
        t[1] = local[877];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[877];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[878];
        t[1] = local[878];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[878];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[879];
        t[1] = local[879];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[879];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[880];
        t[1] = local[880];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[880];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[881];
        t[1] = local[881];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[881];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[882];
        t[1] = local[882];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[882];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[883];
        t[1] = local[883];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[883];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[884];
        t[1] = local[884];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[884];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[885];
        t[1] = local[885];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[885];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[886];
        t[1] = local[886];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[886];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[887];
        t[1] = local[887];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[887];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[888];
        t[1] = local[888];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[888];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[889];
        t[1] = local[889];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[889];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[890];
        t[1] = local[890];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[890];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[891];
        t[1] = local[891];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[891];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[892];
        t[1] = local[892];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[892];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[893];
        t[1] = local[893];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[893];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](103);
        t[0] = local[7];
        t[1] = local[868];
        t[2] = local[869];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[870];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[871];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[872];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[873];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[874];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[875];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[876];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[877];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[878];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[879];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[880];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[881];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[882];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[883];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[884];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[885];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[886];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[887];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[888];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[889];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[890];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[891];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[892];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[893];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = _sub(t[0], t[101]);
        return t[102];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[894];
        t[1] = local[894];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[894];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[895];
        t[1] = local[895];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[895];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[896];
        t[1] = local[896];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[896];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC19 {
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
        t[0] = local[897];
        t[1] = local[897];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[897];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[898];
        t[1] = local[898];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[898];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[899];
        t[1] = local[899];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[899];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[900];
        t[1] = local[900];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[900];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[901];
        t[1] = local[901];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[901];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[902];
        t[1] = local[902];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[902];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[903];
        t[1] = local[903];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[903];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[904];
        t[1] = local[904];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[904];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[905];
        t[1] = local[905];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[905];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[906];
        t[1] = local[906];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[906];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[907];
        t[1] = local[907];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[907];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[908];
        t[1] = local[908];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[908];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[909];
        t[1] = local[909];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[909];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[910];
        t[1] = local[910];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[910];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[911];
        t[1] = local[911];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[911];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[912];
        t[1] = local[912];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[912];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[913];
        t[1] = local[913];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[913];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[914];
        t[1] = local[914];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[914];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[915];
        t[1] = local[915];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[915];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[916];
        t[1] = local[916];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[916];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[917];
        t[1] = local[917];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[917];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[918];
        t[1] = local[918];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[918];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[919];
        t[1] = local[919];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[919];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[920];
        t[1] = local[920];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[920];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[921];
        t[1] = local[921];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[921];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC20 {
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
        t[0] = local[922];
        t[1] = local[922];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[922];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[923];
        t[1] = local[923];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[923];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](119);
        t[0] = local[40];
        t[1] = local[894];
        t[2] = local[895];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[896];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[897];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[898];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[899];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[900];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[901];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[902];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[903];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[904];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[905];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[906];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[907];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[908];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[909];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[910];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[911];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[912];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[913];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[914];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[915];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[916];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[917];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[918];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[919];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = local[920];
        t[103] = _c(67108864);
        t[104] = _mul(t[102], t[103]);
        t[105] = _add(t[101], t[104]);
        t[106] = local[921];
        t[107] = _c(134217728);
        t[108] = _mul(t[106], t[107]);
        t[109] = _add(t[105], t[108]);
        t[110] = local[922];
        t[111] = _c(268435456);
        t[112] = _mul(t[110], t[111]);
        t[113] = _add(t[109], t[112]);
        t[114] = local[923];
        t[115] = _c(536870912);
        t[116] = _mul(t[114], t[115]);
        t[117] = _add(t[113], t[116]);
        t[118] = _sub(t[0], t[117]);
        return t[118];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[924];
        t[1] = local[924];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[924];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[925];
        t[1] = local[925];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[925];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[926];
        t[1] = local[926];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[926];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[927];
        t[1] = local[927];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[927];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[928];
        t[1] = local[928];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[928];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[929];
        t[1] = local[929];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[929];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[930];
        t[1] = local[930];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[930];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[931];
        t[1] = local[931];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[931];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[932];
        t[1] = local[932];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[932];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[933];
        t[1] = local[933];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[933];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[934];
        t[1] = local[934];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[934];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[935];
        t[1] = local[935];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[935];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[936];
        t[1] = local[936];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[936];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[937];
        t[1] = local[937];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[937];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[938];
        t[1] = local[938];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[938];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[939];
        t[1] = local[939];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[939];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[940];
        t[1] = local[940];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[940];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[941];
        t[1] = local[941];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[941];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[942];
        t[1] = local[942];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[942];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[943];
        t[1] = local[943];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[943];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[944];
        t[1] = local[944];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[944];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[945];
        t[1] = local[945];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[945];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC21 {
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
        t[0] = local[946];
        t[1] = local[946];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[946];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[947];
        t[1] = local[947];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[947];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[948];
        t[1] = local[948];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[948];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[949];
        t[1] = local[949];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[949];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[950];
        t[1] = local[950];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[950];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[951];
        t[1] = local[951];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[951];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[952];
        t[1] = local[952];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[952];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[953];
        t[1] = local[953];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[953];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[954];
        t[1] = local[954];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[954];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[955];
        t[1] = local[955];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[955];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](127);
        t[0] = local[41];
        t[1] = local[924];
        t[2] = local[925];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[926];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[927];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[928];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[929];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[930];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[931];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[932];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[933];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[934];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[935];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[936];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[937];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[938];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[939];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[940];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[941];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[942];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[943];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[944];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[945];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[946];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[947];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[948];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[949];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = local[950];
        t[103] = _c(67108864);
        t[104] = _mul(t[102], t[103]);
        t[105] = _add(t[101], t[104]);
        t[106] = local[951];
        t[107] = _c(134217728);
        t[108] = _mul(t[106], t[107]);
        t[109] = _add(t[105], t[108]);
        t[110] = local[952];
        t[111] = _c(268435456);
        t[112] = _mul(t[110], t[111]);
        t[113] = _add(t[109], t[112]);
        t[114] = local[953];
        t[115] = _c(536870912);
        t[116] = _mul(t[114], t[115]);
        t[117] = _add(t[113], t[116]);
        t[118] = local[954];
        t[119] = _c(1073741824);
        t[120] = _mul(t[118], t[119]);
        t[121] = _add(t[117], t[120]);
        t[122] = local[955];
        t[123] = _c(2147483648);
        t[124] = _mul(t[122], t[123]);
        t[125] = _add(t[121], t[124]);
        t[126] = _sub(t[0], t[125]);
        return t[126];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](9);
        t[0] = local[7];
        t[1] = local[6];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[40];
        t[4] = _c(4294967296);
        t[5] = _mul(t[3], t[4]);
        t[6] = local[41];
        t[7] = _add(t[5], t[6]);
        t[8] = _sub(t[2], t[7]);
        return t[8];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](7);
        t[0] = local[9];
        t[1] = local[40];
        t[2] = local[7];
        t[3] = _c(6);
        t[4] = _mul(t[2], t[3]);
        t[5] = _sub(t[1], t[4]);
        t[6] = _sub(t[0], t[5]);
        return t[6];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](13);
        t[0] = local[10];
        t[1] = _c(4294967296);
        t[2] = local[1];
        t[3] = _add(t[1], t[2]);
        t[4] = local[9];
        t[5] = _add(t[3], t[4]);
        t[6] = local[8];
        t[7] = _add(t[5], t[6]);
        t[8] = local[2];
        t[9] = _add(t[7], t[8]);
        t[10] = local[3];
        t[11] = _sub(t[9], t[10]);
        t[12] = _sub(t[0], t[11]);
        return t[12];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[238];
        t[1] = local[238];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[238];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[239];
        t[1] = local[239];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[239];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[240];
        t[1] = local[240];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[240];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[241];
        t[1] = local[241];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[241];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[242];
        t[1] = local[242];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[242];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[243];
        t[1] = local[243];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[243];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[244];
        t[1] = local[244];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[244];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[245];
        t[1] = local[245];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[245];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[246];
        t[1] = local[246];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[246];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[247];
        t[1] = local[247];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[247];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[248];
        t[1] = local[248];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[248];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC22 {
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
        t[0] = local[249];
        t[1] = local[249];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[249];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[250];
        t[1] = local[250];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[250];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[251];
        t[1] = local[251];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[251];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[252];
        t[1] = local[252];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[252];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[253];
        t[1] = local[253];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[253];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[254];
        t[1] = local[254];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[254];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[255];
        t[1] = local[255];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[255];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[256];
        t[1] = local[256];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[256];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[257];
        t[1] = local[257];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[257];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[258];
        t[1] = local[258];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[258];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[259];
        t[1] = local[259];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[259];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[260];
        t[1] = local[260];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[260];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[261];
        t[1] = local[261];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[261];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[262];
        t[1] = local[262];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[262];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[263];
        t[1] = local[263];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[263];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[264];
        t[1] = local[264];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[264];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[265];
        t[1] = local[265];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[265];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[266];
        t[1] = local[266];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[266];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[267];
        t[1] = local[267];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[267];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[268];
        t[1] = local[268];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[268];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[269];
        t[1] = local[269];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[269];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[270];
        t[1] = local[270];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[270];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[271];
        t[1] = local[271];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[271];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](135);
        t[0] = local[10];
        t[1] = local[238];
        t[2] = local[239];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[240];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[241];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[242];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[243];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[244];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[245];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[246];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[247];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[248];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[249];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[250];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[251];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[252];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[253];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[254];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[255];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[256];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[257];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[258];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[259];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[260];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[261];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[262];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[263];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = local[264];
        t[103] = _c(67108864);
        t[104] = _mul(t[102], t[103]);
        t[105] = _add(t[101], t[104]);
        t[106] = local[265];
        t[107] = _c(134217728);
        t[108] = _mul(t[106], t[107]);
        t[109] = _add(t[105], t[108]);
        t[110] = local[266];
        t[111] = _c(268435456);
        t[112] = _mul(t[110], t[111]);
        t[113] = _add(t[109], t[112]);
        t[114] = local[267];
        t[115] = _c(536870912);
        t[116] = _mul(t[114], t[115]);
        t[117] = _add(t[113], t[116]);
        t[118] = local[268];
        t[119] = _c(1073741824);
        t[120] = _mul(t[118], t[119]);
        t[121] = _add(t[117], t[120]);
        t[122] = local[269];
        t[123] = _c(2147483648);
        t[124] = _mul(t[122], t[123]);
        t[125] = _add(t[121], t[124]);
        t[126] = local[270];
        t[127] = _c(4294967296);
        t[128] = _mul(t[126], t[127]);
        t[129] = _add(t[125], t[128]);
        t[130] = local[271];
        t[131] = _c(8589934592);
        t[132] = _mul(t[130], t[131]);
        t[133] = _add(t[129], t[132]);
        t[134] = _sub(t[0], t[133]);
        return t[134];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[42];
        t[1] = local[42];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[42];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC23 {
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
        t[0] = local[43];
        t[1] = local[43];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[43];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[44];
        t[1] = local[44];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[44];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[45];
        t[1] = local[45];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[45];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[46];
        t[1] = local[46];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[46];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[47];
        t[1] = local[47];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[47];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[48];
        t[1] = local[48];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[48];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[49];
        t[1] = local[49];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[49];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[50];
        t[1] = local[50];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[50];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[51];
        t[1] = local[51];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[51];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[52];
        t[1] = local[52];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[52];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[53];
        t[1] = local[53];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[53];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[54];
        t[1] = local[54];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[54];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[55];
        t[1] = local[55];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[55];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[56];
        t[1] = local[56];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[56];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[57];
        t[1] = local[57];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[57];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[58];
        t[1] = local[58];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[58];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[59];
        t[1] = local[59];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[59];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[60];
        t[1] = local[60];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[60];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[61];
        t[1] = local[61];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[61];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[62];
        t[1] = local[62];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[62];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[63];
        t[1] = local[63];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[63];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[64];
        t[1] = local[64];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[64];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[65];
        t[1] = local[65];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[65];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](95);
        t[0] = local[11];
        t[1] = local[42];
        t[2] = local[43];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[44];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[45];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[46];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[47];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[48];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[49];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[50];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[51];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[52];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[53];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[54];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[55];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[56];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[57];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[58];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[59];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[60];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[61];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[62];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[63];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[64];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[65];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = _sub(t[0], t[93]);
        return t[94];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[66];
        t[1] = local[66];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[66];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC24 {
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
        t[0] = local[67];
        t[1] = local[67];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[67];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[68];
        t[1] = local[68];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[68];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[69];
        t[1] = local[69];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[69];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[70];
        t[1] = local[70];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[70];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[71];
        t[1] = local[71];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[71];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[72];
        t[1] = local[72];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[72];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[73];
        t[1] = local[73];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[73];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[74];
        t[1] = local[74];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[74];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[75];
        t[1] = local[75];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[75];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[76];
        t[1] = local[76];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[76];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[77];
        t[1] = local[77];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[77];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[78];
        t[1] = local[78];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[78];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[79];
        t[1] = local[79];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[79];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[80];
        t[1] = local[80];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[80];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[81];
        t[1] = local[81];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[81];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[82];
        t[1] = local[82];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[82];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[83];
        t[1] = local[83];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[83];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[84];
        t[1] = local[84];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[84];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[85];
        t[1] = local[85];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[85];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[86];
        t[1] = local[86];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[86];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[87];
        t[1] = local[87];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[87];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[88];
        t[1] = local[88];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[88];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[89];
        t[1] = local[89];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[89];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](95);
        t[0] = local[12];
        t[1] = local[66];
        t[2] = local[67];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[68];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[69];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[70];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[71];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[72];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[73];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[74];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[75];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[76];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[77];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[78];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[79];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[80];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[81];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[82];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[83];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[84];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[85];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[86];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[87];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[88];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[89];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = _sub(t[0], t[93]);
        return t[94];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](7);
        t[0] = local[0];
        t[1] = local[11];
        t[2] = _c(16777216);
        t[3] = _mul(t[1], t[2]);
        t[4] = local[12];
        t[5] = _add(t[3], t[4]);
        t[6] = _sub(t[0], t[5]);
        return t[6];
    }
}

library TickC25 {
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
        t[0] = local[13];
        t[1] = local[11];
        t[2] = local[10];
        t[3] = _mul(t[1], t[2]);
        t[4] = _sub(t[0], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[14];
        t[1] = local[12];
        t[2] = local[10];
        t[3] = _mul(t[1], t[2]);
        t[4] = _sub(t[0], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[90];
        t[1] = local[90];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[90];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[91];
        t[1] = local[91];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[91];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[92];
        t[1] = local[92];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[92];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[93];
        t[1] = local[93];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[93];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[94];
        t[1] = local[94];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[94];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[95];
        t[1] = local[95];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[95];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[96];
        t[1] = local[96];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[96];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[97];
        t[1] = local[97];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[97];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[98];
        t[1] = local[98];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[98];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[99];
        t[1] = local[99];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[99];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[100];
        t[1] = local[100];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[100];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[101];
        t[1] = local[101];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[101];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[102];
        t[1] = local[102];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[102];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[103];
        t[1] = local[103];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[103];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[104];
        t[1] = local[104];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[104];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[105];
        t[1] = local[105];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[105];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[106];
        t[1] = local[106];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[106];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[107];
        t[1] = local[107];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[107];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[108];
        t[1] = local[108];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[108];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[109];
        t[1] = local[109];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[109];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[110];
        t[1] = local[110];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[110];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[111];
        t[1] = local[111];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[111];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[112];
        t[1] = local[112];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[112];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC26 {
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
        t[0] = local[113];
        t[1] = local[113];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[113];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[114];
        t[1] = local[114];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[114];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[115];
        t[1] = local[115];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[115];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[116];
        t[1] = local[116];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[116];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[117];
        t[1] = local[117];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[117];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[118];
        t[1] = local[118];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[118];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[119];
        t[1] = local[119];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[119];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[120];
        t[1] = local[120];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[120];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[121];
        t[1] = local[121];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[121];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[122];
        t[1] = local[122];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[122];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[123];
        t[1] = local[123];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[123];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[124];
        t[1] = local[124];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[124];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[125];
        t[1] = local[125];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[125];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[126];
        t[1] = local[126];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[126];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[127];
        t[1] = local[127];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[127];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[128];
        t[1] = local[128];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[128];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[129];
        t[1] = local[129];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[129];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[130];
        t[1] = local[130];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[130];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[131];
        t[1] = local[131];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[131];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[132];
        t[1] = local[132];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[132];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[133];
        t[1] = local[133];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[133];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[134];
        t[1] = local[134];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[134];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[135];
        t[1] = local[135];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[135];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[136];
        t[1] = local[136];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[136];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[137];
        t[1] = local[137];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[137];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC27 {
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
        t[0] = local[138];
        t[1] = local[138];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[138];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[139];
        t[1] = local[139];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[139];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](199);
        t[0] = local[15];
        t[1] = local[90];
        t[2] = local[91];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[92];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[93];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[94];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[95];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[96];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[97];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[98];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[99];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[100];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[101];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[102];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[103];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[104];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[105];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[106];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[107];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[108];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[109];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[110];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[111];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[112];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[113];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[114];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[115];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = local[116];
        t[103] = _c(67108864);
        t[104] = _mul(t[102], t[103]);
        t[105] = _add(t[101], t[104]);
        t[106] = local[117];
        t[107] = _c(134217728);
        t[108] = _mul(t[106], t[107]);
        t[109] = _add(t[105], t[108]);
        t[110] = local[118];
        t[111] = _c(268435456);
        t[112] = _mul(t[110], t[111]);
        t[113] = _add(t[109], t[112]);
        t[114] = local[119];
        t[115] = _c(536870912);
        t[116] = _mul(t[114], t[115]);
        t[117] = _add(t[113], t[116]);
        t[118] = local[120];
        t[119] = _c(1073741824);
        t[120] = _mul(t[118], t[119]);
        t[121] = _add(t[117], t[120]);
        t[122] = local[121];
        t[123] = _c(2147483648);
        t[124] = _mul(t[122], t[123]);
        t[125] = _add(t[121], t[124]);
        t[126] = local[122];
        t[127] = _c(4294967296);
        t[128] = _mul(t[126], t[127]);
        t[129] = _add(t[125], t[128]);
        t[130] = local[123];
        t[131] = _c(8589934592);
        t[132] = _mul(t[130], t[131]);
        t[133] = _add(t[129], t[132]);
        t[134] = local[124];
        t[135] = _c(17179869184);
        t[136] = _mul(t[134], t[135]);
        t[137] = _add(t[133], t[136]);
        t[138] = local[125];
        t[139] = _c(34359738368);
        t[140] = _mul(t[138], t[139]);
        t[141] = _add(t[137], t[140]);
        t[142] = local[126];
        t[143] = _c(68719476736);
        t[144] = _mul(t[142], t[143]);
        t[145] = _add(t[141], t[144]);
        t[146] = local[127];
        t[147] = _c(137438953472);
        t[148] = _mul(t[146], t[147]);
        t[149] = _add(t[145], t[148]);
        t[150] = local[128];
        t[151] = _c(274877906944);
        t[152] = _mul(t[150], t[151]);
        t[153] = _add(t[149], t[152]);
        t[154] = local[129];
        t[155] = _c(549755813888);
        t[156] = _mul(t[154], t[155]);
        t[157] = _add(t[153], t[156]);
        t[158] = local[130];
        t[159] = _c(1099511627776);
        t[160] = _mul(t[158], t[159]);
        t[161] = _add(t[157], t[160]);
        t[162] = local[131];
        t[163] = _c(2199023255552);
        t[164] = _mul(t[162], t[163]);
        t[165] = _add(t[161], t[164]);
        t[166] = local[132];
        t[167] = _c(4398046511104);
        t[168] = _mul(t[166], t[167]);
        t[169] = _add(t[165], t[168]);
        t[170] = local[133];
        t[171] = _c(8796093022208);
        t[172] = _mul(t[170], t[171]);
        t[173] = _add(t[169], t[172]);
        t[174] = local[134];
        t[175] = _c(17592186044416);
        t[176] = _mul(t[174], t[175]);
        t[177] = _add(t[173], t[176]);
        t[178] = local[135];
        t[179] = _c(35184372088832);
        t[180] = _mul(t[178], t[179]);
        t[181] = _add(t[177], t[180]);
        t[182] = local[136];
        t[183] = _c(70368744177664);
        t[184] = _mul(t[182], t[183]);
        t[185] = _add(t[181], t[184]);
        t[186] = local[137];
        t[187] = _c(140737488355328);
        t[188] = _mul(t[186], t[187]);
        t[189] = _add(t[185], t[188]);
        t[190] = local[138];
        t[191] = _c(281474976710656);
        t[192] = _mul(t[190], t[191]);
        t[193] = _add(t[189], t[192]);
        t[194] = local[139];
        t[195] = _c(562949953421312);
        t[196] = _mul(t[194], t[195]);
        t[197] = _add(t[193], t[196]);
        t[198] = _sub(t[0], t[197]);
        return t[198];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[140];
        t[1] = local[140];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[140];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[141];
        t[1] = local[141];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[141];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[142];
        t[1] = local[142];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[142];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[143];
        t[1] = local[143];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[143];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[144];
        t[1] = local[144];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[144];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[145];
        t[1] = local[145];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[145];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[146];
        t[1] = local[146];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[146];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[147];
        t[1] = local[147];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[147];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](31);
        t[0] = local[16];
        t[1] = local[140];
        t[2] = local[141];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[142];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[143];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[144];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[145];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[146];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[147];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = _sub(t[0], t[29]);
        return t[30];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](7);
        t[0] = local[13];
        t[1] = local[15];
        t[2] = _c(256);
        t[3] = _mul(t[1], t[2]);
        t[4] = local[16];
        t[5] = _add(t[3], t[4]);
        t[6] = _sub(t[0], t[5]);
        return t[6];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[148];
        t[1] = local[148];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[148];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[149];
        t[1] = local[149];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[149];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[150];
        t[1] = local[150];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[150];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[151];
        t[1] = local[151];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[151];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[152];
        t[1] = local[152];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[152];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[153];
        t[1] = local[153];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[153];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[154];
        t[1] = local[154];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[154];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[155];
        t[1] = local[155];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[155];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[156];
        t[1] = local[156];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[156];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[157];
        t[1] = local[157];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[157];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[158];
        t[1] = local[158];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[158];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[159];
        t[1] = local[159];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[159];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC28 {
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
        t[0] = local[160];
        t[1] = local[160];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[160];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[161];
        t[1] = local[161];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[161];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[162];
        t[1] = local[162];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[162];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[163];
        t[1] = local[163];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[163];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[164];
        t[1] = local[164];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[164];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[165];
        t[1] = local[165];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[165];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[166];
        t[1] = local[166];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[166];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[167];
        t[1] = local[167];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[167];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[168];
        t[1] = local[168];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[168];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[169];
        t[1] = local[169];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[169];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[170];
        t[1] = local[170];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[170];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[171];
        t[1] = local[171];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[171];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[172];
        t[1] = local[172];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[172];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[173];
        t[1] = local[173];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[173];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](103);
        t[0] = local[17];
        t[1] = local[148];
        t[2] = local[149];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[150];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[151];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[152];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[153];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[154];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[155];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[156];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[157];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[158];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[159];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[160];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[161];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[162];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[163];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[164];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[165];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[166];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[167];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[168];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[169];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[170];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[171];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[172];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[173];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = _sub(t[0], t[101]);
        return t[102];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[174];
        t[1] = local[174];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[174];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[175];
        t[1] = local[175];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[175];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[176];
        t[1] = local[176];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[176];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[177];
        t[1] = local[177];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[177];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[178];
        t[1] = local[178];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[178];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[179];
        t[1] = local[179];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[179];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[180];
        t[1] = local[180];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[180];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[181];
        t[1] = local[181];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[181];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[182];
        t[1] = local[182];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[182];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[183];
        t[1] = local[183];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[183];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC29 {
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
        t[0] = local[184];
        t[1] = local[184];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[184];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[185];
        t[1] = local[185];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[185];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[186];
        t[1] = local[186];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[186];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[187];
        t[1] = local[187];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[187];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[188];
        t[1] = local[188];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[188];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[189];
        t[1] = local[189];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[189];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[190];
        t[1] = local[190];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[190];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[191];
        t[1] = local[191];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[191];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[192];
        t[1] = local[192];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[192];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[193];
        t[1] = local[193];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[193];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[194];
        t[1] = local[194];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[194];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[195];
        t[1] = local[195];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[195];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[196];
        t[1] = local[196];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[196];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[197];
        t[1] = local[197];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[197];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[198];
        t[1] = local[198];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[198];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[199];
        t[1] = local[199];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[199];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[200];
        t[1] = local[200];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[200];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[201];
        t[1] = local[201];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[201];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[202];
        t[1] = local[202];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[202];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[203];
        t[1] = local[203];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[203];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[204];
        t[1] = local[204];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[204];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[205];
        t[1] = local[205];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[205];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](127);
        t[0] = local[18];
        t[1] = local[174];
        t[2] = local[175];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[176];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[177];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[178];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[179];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[180];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[181];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[182];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[183];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[184];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[185];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[186];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[187];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[188];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[189];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[190];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[191];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[192];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[193];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[194];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[195];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[196];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[197];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[198];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[199];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = local[200];
        t[103] = _c(67108864);
        t[104] = _mul(t[102], t[103]);
        t[105] = _add(t[101], t[104]);
        t[106] = local[201];
        t[107] = _c(134217728);
        t[108] = _mul(t[106], t[107]);
        t[109] = _add(t[105], t[108]);
        t[110] = local[202];
        t[111] = _c(268435456);
        t[112] = _mul(t[110], t[111]);
        t[113] = _add(t[109], t[112]);
        t[114] = local[203];
        t[115] = _c(536870912);
        t[116] = _mul(t[114], t[115]);
        t[117] = _add(t[113], t[116]);
        t[118] = local[204];
        t[119] = _c(1073741824);
        t[120] = _mul(t[118], t[119]);
        t[121] = _add(t[117], t[120]);
        t[122] = local[205];
        t[123] = _c(2147483648);
        t[124] = _mul(t[122], t[123]);
        t[125] = _add(t[121], t[124]);
        t[126] = _sub(t[0], t[125]);
        return t[126];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](7);
        t[0] = local[14];
        t[1] = local[17];
        t[2] = _c(4294967296);
        t[3] = _mul(t[1], t[2]);
        t[4] = local[18];
        t[5] = _add(t[3], t[4]);
        t[6] = _sub(t[0], t[5]);
        return t[6];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[19];
        t[1] = local[19];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[19];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC30 {
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
        t[0] = local[206];
        t[1] = local[206];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[206];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[207];
        t[1] = local[207];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[207];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[208];
        t[1] = local[208];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[208];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[209];
        t[1] = local[209];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[209];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[210];
        t[1] = local[210];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[210];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[211];
        t[1] = local[211];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[211];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[212];
        t[1] = local[212];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[212];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[213];
        t[1] = local[213];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[213];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[214];
        t[1] = local[214];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[214];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[215];
        t[1] = local[215];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[215];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[216];
        t[1] = local[216];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[216];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[217];
        t[1] = local[217];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[217];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[218];
        t[1] = local[218];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[218];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[219];
        t[1] = local[219];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[219];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[220];
        t[1] = local[220];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[220];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[221];
        t[1] = local[221];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[221];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[222];
        t[1] = local[222];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[222];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[223];
        t[1] = local[223];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[223];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[224];
        t[1] = local[224];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[224];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[225];
        t[1] = local[225];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[225];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[226];
        t[1] = local[226];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[226];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[227];
        t[1] = local[227];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[227];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[228];
        t[1] = local[228];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[228];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[229];
        t[1] = local[229];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[229];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[230];
        t[1] = local[230];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[230];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC31 {
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
        t[0] = local[231];
        t[1] = local[231];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[231];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[232];
        t[1] = local[232];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[232];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[233];
        t[1] = local[233];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[233];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[234];
        t[1] = local[234];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[234];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[235];
        t[1] = local[235];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[235];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[236];
        t[1] = local[236];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[236];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[237];
        t[1] = local[237];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[237];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](127);
        t[0] = local[20];
        t[1] = local[206];
        t[2] = local[207];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[208];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[209];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[210];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[211];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[212];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[213];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[214];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[215];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[216];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[217];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[218];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[219];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[220];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[221];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[222];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[223];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[224];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[225];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[226];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[227];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[228];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[229];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[230];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[231];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = local[232];
        t[103] = _c(67108864);
        t[104] = _mul(t[102], t[103]);
        t[105] = _add(t[101], t[104]);
        t[106] = local[233];
        t[107] = _c(134217728);
        t[108] = _mul(t[106], t[107]);
        t[109] = _add(t[105], t[108]);
        t[110] = local[234];
        t[111] = _c(268435456);
        t[112] = _mul(t[110], t[111]);
        t[113] = _add(t[109], t[112]);
        t[114] = local[235];
        t[115] = _c(536870912);
        t[116] = _mul(t[114], t[115]);
        t[117] = _add(t[113], t[116]);
        t[118] = local[236];
        t[119] = _c(1073741824);
        t[120] = _mul(t[118], t[119]);
        t[121] = _add(t[117], t[120]);
        t[122] = local[237];
        t[123] = _c(2147483648);
        t[124] = _mul(t[122], t[123]);
        t[125] = _add(t[121], t[124]);
        t[126] = _sub(t[0], t[125]);
        return t[126];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](11);
        t[0] = local[16];
        t[1] = _c(16777216);
        t[2] = _mul(t[0], t[1]);
        t[3] = local[18];
        t[4] = _add(t[2], t[3]);
        t[5] = local[19];
        t[6] = _c(4294967296);
        t[7] = _mul(t[5], t[6]);
        t[8] = local[20];
        t[9] = _add(t[7], t[8]);
        t[10] = _sub(t[4], t[9]);
        return t[10];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](7);
        t[0] = local[21];
        t[1] = local[15];
        t[2] = local[17];
        t[3] = _add(t[1], t[2]);
        t[4] = local[19];
        t[5] = _add(t[3], t[4]);
        t[6] = _sub(t[0], t[5]);
        return t[6];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[272];
        t[1] = local[272];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[272];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[273];
        t[1] = local[273];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[273];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[274];
        t[1] = local[274];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[274];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[275];
        t[1] = local[275];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[275];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[276];
        t[1] = local[276];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[276];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[277];
        t[1] = local[277];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[277];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[278];
        t[1] = local[278];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[278];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[279];
        t[1] = local[279];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[279];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[280];
        t[1] = local[280];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[280];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[281];
        t[1] = local[281];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[281];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[282];
        t[1] = local[282];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[282];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[283];
        t[1] = local[283];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[283];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[284];
        t[1] = local[284];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[284];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[285];
        t[1] = local[285];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[285];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[286];
        t[1] = local[286];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[286];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC32 {
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
        t[0] = local[287];
        t[1] = local[287];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[287];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[288];
        t[1] = local[288];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[288];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[289];
        t[1] = local[289];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[289];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[290];
        t[1] = local[290];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[290];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[291];
        t[1] = local[291];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[291];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[292];
        t[1] = local[292];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[292];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[293];
        t[1] = local[293];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[293];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[294];
        t[1] = local[294];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[294];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[295];
        t[1] = local[295];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[295];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[296];
        t[1] = local[296];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[296];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[297];
        t[1] = local[297];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[297];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[298];
        t[1] = local[298];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[298];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[299];
        t[1] = local[299];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[299];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[300];
        t[1] = local[300];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[300];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[301];
        t[1] = local[301];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[301];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[302];
        t[1] = local[302];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[302];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[303];
        t[1] = local[303];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[303];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[304];
        t[1] = local[304];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[304];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[305];
        t[1] = local[305];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[305];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[306];
        t[1] = local[306];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[306];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[307];
        t[1] = local[307];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[307];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[308];
        t[1] = local[308];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[308];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[309];
        t[1] = local[309];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[309];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[310];
        t[1] = local[310];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[310];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[311];
        t[1] = local[311];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[311];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC33 {
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
        t[0] = local[312];
        t[1] = local[312];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[312];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[313];
        t[1] = local[313];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[313];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[314];
        t[1] = local[314];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[314];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[315];
        t[1] = local[315];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[315];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[316];
        t[1] = local[316];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[316];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[317];
        t[1] = local[317];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[317];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[318];
        t[1] = local[318];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[318];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[319];
        t[1] = local[319];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[319];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[320];
        t[1] = local[320];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[320];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[321];
        t[1] = local[321];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[321];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](199);
        t[0] = local[21];
        t[1] = local[272];
        t[2] = local[273];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[274];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[275];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[276];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[277];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[278];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[279];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[280];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[281];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[282];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[283];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[284];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[285];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[286];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[287];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[288];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[289];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[290];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[291];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[292];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[293];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[294];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[295];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[296];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[297];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = local[298];
        t[103] = _c(67108864);
        t[104] = _mul(t[102], t[103]);
        t[105] = _add(t[101], t[104]);
        t[106] = local[299];
        t[107] = _c(134217728);
        t[108] = _mul(t[106], t[107]);
        t[109] = _add(t[105], t[108]);
        t[110] = local[300];
        t[111] = _c(268435456);
        t[112] = _mul(t[110], t[111]);
        t[113] = _add(t[109], t[112]);
        t[114] = local[301];
        t[115] = _c(536870912);
        t[116] = _mul(t[114], t[115]);
        t[117] = _add(t[113], t[116]);
        t[118] = local[302];
        t[119] = _c(1073741824);
        t[120] = _mul(t[118], t[119]);
        t[121] = _add(t[117], t[120]);
        t[122] = local[303];
        t[123] = _c(2147483648);
        t[124] = _mul(t[122], t[123]);
        t[125] = _add(t[121], t[124]);
        t[126] = local[304];
        t[127] = _c(4294967296);
        t[128] = _mul(t[126], t[127]);
        t[129] = _add(t[125], t[128]);
        t[130] = local[305];
        t[131] = _c(8589934592);
        t[132] = _mul(t[130], t[131]);
        t[133] = _add(t[129], t[132]);
        t[134] = local[306];
        t[135] = _c(17179869184);
        t[136] = _mul(t[134], t[135]);
        t[137] = _add(t[133], t[136]);
        t[138] = local[307];
        t[139] = _c(34359738368);
        t[140] = _mul(t[138], t[139]);
        t[141] = _add(t[137], t[140]);
        t[142] = local[308];
        t[143] = _c(68719476736);
        t[144] = _mul(t[142], t[143]);
        t[145] = _add(t[141], t[144]);
        t[146] = local[309];
        t[147] = _c(137438953472);
        t[148] = _mul(t[146], t[147]);
        t[149] = _add(t[145], t[148]);
        t[150] = local[310];
        t[151] = _c(274877906944);
        t[152] = _mul(t[150], t[151]);
        t[153] = _add(t[149], t[152]);
        t[154] = local[311];
        t[155] = _c(549755813888);
        t[156] = _mul(t[154], t[155]);
        t[157] = _add(t[153], t[156]);
        t[158] = local[312];
        t[159] = _c(1099511627776);
        t[160] = _mul(t[158], t[159]);
        t[161] = _add(t[157], t[160]);
        t[162] = local[313];
        t[163] = _c(2199023255552);
        t[164] = _mul(t[162], t[163]);
        t[165] = _add(t[161], t[164]);
        t[166] = local[314];
        t[167] = _c(4398046511104);
        t[168] = _mul(t[166], t[167]);
        t[169] = _add(t[165], t[168]);
        t[170] = local[315];
        t[171] = _c(8796093022208);
        t[172] = _mul(t[170], t[171]);
        t[173] = _add(t[169], t[172]);
        t[174] = local[316];
        t[175] = _c(17592186044416);
        t[176] = _mul(t[174], t[175]);
        t[177] = _add(t[173], t[176]);
        t[178] = local[317];
        t[179] = _c(35184372088832);
        t[180] = _mul(t[178], t[179]);
        t[181] = _add(t[177], t[180]);
        t[182] = local[318];
        t[183] = _c(70368744177664);
        t[184] = _mul(t[182], t[183]);
        t[185] = _add(t[181], t[184]);
        t[186] = local[319];
        t[187] = _c(140737488355328);
        t[188] = _mul(t[186], t[187]);
        t[189] = _add(t[185], t[188]);
        t[190] = local[320];
        t[191] = _c(281474976710656);
        t[192] = _mul(t[190], t[191]);
        t[193] = _add(t[189], t[192]);
        t[194] = local[321];
        t[195] = _c(562949953421312);
        t[196] = _mul(t[194], t[195]);
        t[197] = _add(t[193], t[196]);
        t[198] = _sub(t[0], t[197]);
        return t[198];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[23];
        t[1] = local[22];
        t[2] = local[21];
        t[3] = _sub(t[1], t[2]);
        t[4] = _sub(t[0], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[24];
        t[1] = local[22];
        t[2] = _c(4294967296);
        t[3] = _sub(t[1], t[2]);
        t[4] = _sub(t[0], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[370];
        t[1] = local[370];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[370];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[371];
        t[1] = local[371];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[371];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[372];
        t[1] = local[372];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[372];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[373];
        t[1] = local[373];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[373];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[374];
        t[1] = local[374];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[374];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[375];
        t[1] = local[375];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[375];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[376];
        t[1] = local[376];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[376];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[377];
        t[1] = local[377];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[377];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[378];
        t[1] = local[378];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[378];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[379];
        t[1] = local[379];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[379];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[380];
        t[1] = local[380];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[380];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[381];
        t[1] = local[381];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[381];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC34 {
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
        t[0] = local[382];
        t[1] = local[382];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[382];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[383];
        t[1] = local[383];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[383];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[384];
        t[1] = local[384];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[384];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[385];
        t[1] = local[385];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[385];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[386];
        t[1] = local[386];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[386];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[387];
        t[1] = local[387];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[387];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[388];
        t[1] = local[388];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[388];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[389];
        t[1] = local[389];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[389];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[390];
        t[1] = local[390];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[390];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[391];
        t[1] = local[391];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[391];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[392];
        t[1] = local[392];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[392];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[393];
        t[1] = local[393];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[393];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[394];
        t[1] = local[394];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[394];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[395];
        t[1] = local[395];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[395];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[396];
        t[1] = local[396];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[396];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[397];
        t[1] = local[397];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[397];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[398];
        t[1] = local[398];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[398];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[399];
        t[1] = local[399];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[399];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[400];
        t[1] = local[400];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[400];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[401];
        t[1] = local[401];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[401];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[402];
        t[1] = local[402];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[402];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](131);
        t[0] = local[23];
        t[1] = local[370];
        t[2] = local[371];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[372];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[373];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[374];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[375];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[376];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[377];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[378];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[379];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[380];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[381];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[382];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[383];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[384];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[385];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[386];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[387];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[388];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[389];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[390];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[391];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[392];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[393];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[394];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[395];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = local[396];
        t[103] = _c(67108864);
        t[104] = _mul(t[102], t[103]);
        t[105] = _add(t[101], t[104]);
        t[106] = local[397];
        t[107] = _c(134217728);
        t[108] = _mul(t[106], t[107]);
        t[109] = _add(t[105], t[108]);
        t[110] = local[398];
        t[111] = _c(268435456);
        t[112] = _mul(t[110], t[111]);
        t[113] = _add(t[109], t[112]);
        t[114] = local[399];
        t[115] = _c(536870912);
        t[116] = _mul(t[114], t[115]);
        t[117] = _add(t[113], t[116]);
        t[118] = local[400];
        t[119] = _c(1073741824);
        t[120] = _mul(t[118], t[119]);
        t[121] = _add(t[117], t[120]);
        t[122] = local[401];
        t[123] = _c(2147483648);
        t[124] = _mul(t[122], t[123]);
        t[125] = _add(t[121], t[124]);
        t[126] = local[402];
        t[127] = _c(4294967296);
        t[128] = _mul(t[126], t[127]);
        t[129] = _add(t[125], t[128]);
        t[130] = _sub(t[0], t[129]);
        return t[130];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[403];
        t[1] = local[403];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[403];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[404];
        t[1] = local[404];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[404];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[405];
        t[1] = local[405];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[405];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC35 {
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
        t[0] = local[406];
        t[1] = local[406];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[406];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[407];
        t[1] = local[407];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[407];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[408];
        t[1] = local[408];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[408];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[409];
        t[1] = local[409];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[409];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[410];
        t[1] = local[410];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[410];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[411];
        t[1] = local[411];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[411];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[412];
        t[1] = local[412];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[412];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[413];
        t[1] = local[413];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[413];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[414];
        t[1] = local[414];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[414];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[415];
        t[1] = local[415];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[415];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[416];
        t[1] = local[416];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[416];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[417];
        t[1] = local[417];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[417];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[418];
        t[1] = local[418];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[418];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[419];
        t[1] = local[419];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[419];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[420];
        t[1] = local[420];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[420];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[421];
        t[1] = local[421];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[421];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[422];
        t[1] = local[422];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[422];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[423];
        t[1] = local[423];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[423];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[424];
        t[1] = local[424];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[424];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[425];
        t[1] = local[425];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[425];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[426];
        t[1] = local[426];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[426];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[427];
        t[1] = local[427];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[427];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[428];
        t[1] = local[428];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[428];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[429];
        t[1] = local[429];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[429];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[430];
        t[1] = local[430];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[430];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC36 {
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
        t[0] = local[431];
        t[1] = local[431];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[431];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[432];
        t[1] = local[432];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[432];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[433];
        t[1] = local[433];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[433];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[434];
        t[1] = local[434];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[434];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[435];
        t[1] = local[435];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[435];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[436];
        t[1] = local[436];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[436];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[437];
        t[1] = local[437];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[437];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[438];
        t[1] = local[438];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[438];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[439];
        t[1] = local[439];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[439];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[440];
        t[1] = local[440];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[440];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[441];
        t[1] = local[441];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[441];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[442];
        t[1] = local[442];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[442];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[443];
        t[1] = local[443];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[443];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[444];
        t[1] = local[444];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[444];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[445];
        t[1] = local[445];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[445];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[446];
        t[1] = local[446];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[446];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[447];
        t[1] = local[447];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[447];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[448];
        t[1] = local[448];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[448];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[449];
        t[1] = local[449];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[449];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[450];
        t[1] = local[450];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[450];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[451];
        t[1] = local[451];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[451];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[452];
        t[1] = local[452];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[452];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](199);
        t[0] = local[24];
        t[1] = local[403];
        t[2] = local[404];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[405];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[406];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[407];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[408];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[409];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[410];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[411];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[412];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[413];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[414];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[415];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[416];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[417];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[418];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[419];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[420];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[421];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[422];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[423];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[424];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[425];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[426];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[427];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[428];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = local[429];
        t[103] = _c(67108864);
        t[104] = _mul(t[102], t[103]);
        t[105] = _add(t[101], t[104]);
        t[106] = local[430];
        t[107] = _c(134217728);
        t[108] = _mul(t[106], t[107]);
        t[109] = _add(t[105], t[108]);
        t[110] = local[431];
        t[111] = _c(268435456);
        t[112] = _mul(t[110], t[111]);
        t[113] = _add(t[109], t[112]);
        t[114] = local[432];
        t[115] = _c(536870912);
        t[116] = _mul(t[114], t[115]);
        t[117] = _add(t[113], t[116]);
        t[118] = local[433];
        t[119] = _c(1073741824);
        t[120] = _mul(t[118], t[119]);
        t[121] = _add(t[117], t[120]);
        t[122] = local[434];
        t[123] = _c(2147483648);
        t[124] = _mul(t[122], t[123]);
        t[125] = _add(t[121], t[124]);
        t[126] = local[435];
        t[127] = _c(4294967296);
        t[128] = _mul(t[126], t[127]);
        t[129] = _add(t[125], t[128]);
        t[130] = local[436];
        t[131] = _c(8589934592);
        t[132] = _mul(t[130], t[131]);
        t[133] = _add(t[129], t[132]);
        t[134] = local[437];
        t[135] = _c(17179869184);
        t[136] = _mul(t[134], t[135]);
        t[137] = _add(t[133], t[136]);
        t[138] = local[438];
        t[139] = _c(34359738368);
        t[140] = _mul(t[138], t[139]);
        t[141] = _add(t[137], t[140]);
        t[142] = local[439];
        t[143] = _c(68719476736);
        t[144] = _mul(t[142], t[143]);
        t[145] = _add(t[141], t[144]);
        t[146] = local[440];
        t[147] = _c(137438953472);
        t[148] = _mul(t[146], t[147]);
        t[149] = _add(t[145], t[148]);
        t[150] = local[441];
        t[151] = _c(274877906944);
        t[152] = _mul(t[150], t[151]);
        t[153] = _add(t[149], t[152]);
        t[154] = local[442];
        t[155] = _c(549755813888);
        t[156] = _mul(t[154], t[155]);
        t[157] = _add(t[153], t[156]);
        t[158] = local[443];
        t[159] = _c(1099511627776);
        t[160] = _mul(t[158], t[159]);
        t[161] = _add(t[157], t[160]);
        t[162] = local[444];
        t[163] = _c(2199023255552);
        t[164] = _mul(t[162], t[163]);
        t[165] = _add(t[161], t[164]);
        t[166] = local[445];
        t[167] = _c(4398046511104);
        t[168] = _mul(t[166], t[167]);
        t[169] = _add(t[165], t[168]);
        t[170] = local[446];
        t[171] = _c(8796093022208);
        t[172] = _mul(t[170], t[171]);
        t[173] = _add(t[169], t[172]);
        t[174] = local[447];
        t[175] = _c(17592186044416);
        t[176] = _mul(t[174], t[175]);
        t[177] = _add(t[173], t[176]);
        t[178] = local[448];
        t[179] = _c(35184372088832);
        t[180] = _mul(t[178], t[179]);
        t[181] = _add(t[177], t[180]);
        t[182] = local[449];
        t[183] = _c(70368744177664);
        t[184] = _mul(t[182], t[183]);
        t[185] = _add(t[181], t[184]);
        t[186] = local[450];
        t[187] = _c(140737488355328);
        t[188] = _mul(t[186], t[187]);
        t[189] = _add(t[185], t[188]);
        t[190] = local[451];
        t[191] = _c(281474976710656);
        t[192] = _mul(t[190], t[191]);
        t[193] = _add(t[189], t[192]);
        t[194] = local[452];
        t[195] = _c(562949953421312);
        t[196] = _mul(t[194], t[195]);
        t[197] = _add(t[193], t[196]);
        t[198] = _sub(t[0], t[197]);
        return t[198];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](7);
        t[0] = local[22];
        t[1] = local[21];
        t[2] = _sub(t[0], t[1]);
        t[3] = local[22];
        t[4] = _c(4294967296);
        t[5] = _sub(t[3], t[4]);
        t[6] = _mul(t[2], t[5]);
        return t[6];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[322];
        t[1] = local[322];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[322];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC37 {
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
        t[0] = local[323];
        t[1] = local[323];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[323];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[324];
        t[1] = local[324];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[324];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[325];
        t[1] = local[325];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[325];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[326];
        t[1] = local[326];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[326];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[327];
        t[1] = local[327];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[327];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[328];
        t[1] = local[328];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[328];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[329];
        t[1] = local[329];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[329];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[330];
        t[1] = local[330];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[330];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[331];
        t[1] = local[331];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[331];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[332];
        t[1] = local[332];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[332];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[333];
        t[1] = local[333];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[333];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[334];
        t[1] = local[334];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[334];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[335];
        t[1] = local[335];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[335];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[336];
        t[1] = local[336];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[336];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[337];
        t[1] = local[337];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[337];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[338];
        t[1] = local[338];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[338];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[339];
        t[1] = local[339];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[339];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[340];
        t[1] = local[340];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[340];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[341];
        t[1] = local[341];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[341];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[342];
        t[1] = local[342];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[342];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[343];
        t[1] = local[343];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[343];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[344];
        t[1] = local[344];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[344];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[345];
        t[1] = local[345];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[345];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c23(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[346];
        t[1] = local[346];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[346];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c24(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[347];
        t[1] = local[347];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[347];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
}

library TickC38 {
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
        t[0] = local[348];
        t[1] = local[348];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[348];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c1(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[349];
        t[1] = local[349];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[349];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c2(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[350];
        t[1] = local[350];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[350];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c3(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[351];
        t[1] = local[351];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[351];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c4(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[352];
        t[1] = local[352];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[352];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c5(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[353];
        t[1] = local[353];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[353];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c6(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[354];
        t[1] = local[354];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[354];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c7(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[355];
        t[1] = local[355];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[355];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c8(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[356];
        t[1] = local[356];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[356];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c9(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[357];
        t[1] = local[357];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[357];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c10(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[358];
        t[1] = local[358];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[358];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c11(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[359];
        t[1] = local[359];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[359];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c12(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[360];
        t[1] = local[360];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[360];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c13(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[361];
        t[1] = local[361];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[361];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c14(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[362];
        t[1] = local[362];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[362];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c15(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[363];
        t[1] = local[363];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[363];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c16(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[364];
        t[1] = local[364];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[364];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c17(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[365];
        t[1] = local[365];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[365];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c18(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[366];
        t[1] = local[366];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[366];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c19(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[367];
        t[1] = local[367];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[367];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c20(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[368];
        t[1] = local[368];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[368];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c21(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](5);
        t[0] = local[369];
        t[1] = local[369];
        t[2] = _mul(t[0], t[1]);
        t[3] = local[369];
        t[4] = _sub(t[2], t[3]);
        return t[4];
    }
    function _c22(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s) private pure returns (FriFolding.E memory) {
        FriFolding.E[] memory t = new FriFolding.E[](191);
        t[0] = local[22];
        t[1] = local[322];
        t[2] = local[323];
        t[3] = _c(2);
        t[4] = _mul(t[2], t[3]);
        t[5] = _add(t[1], t[4]);
        t[6] = local[324];
        t[7] = _c(4);
        t[8] = _mul(t[6], t[7]);
        t[9] = _add(t[5], t[8]);
        t[10] = local[325];
        t[11] = _c(8);
        t[12] = _mul(t[10], t[11]);
        t[13] = _add(t[9], t[12]);
        t[14] = local[326];
        t[15] = _c(16);
        t[16] = _mul(t[14], t[15]);
        t[17] = _add(t[13], t[16]);
        t[18] = local[327];
        t[19] = _c(32);
        t[20] = _mul(t[18], t[19]);
        t[21] = _add(t[17], t[20]);
        t[22] = local[328];
        t[23] = _c(64);
        t[24] = _mul(t[22], t[23]);
        t[25] = _add(t[21], t[24]);
        t[26] = local[329];
        t[27] = _c(128);
        t[28] = _mul(t[26], t[27]);
        t[29] = _add(t[25], t[28]);
        t[30] = local[330];
        t[31] = _c(256);
        t[32] = _mul(t[30], t[31]);
        t[33] = _add(t[29], t[32]);
        t[34] = local[331];
        t[35] = _c(512);
        t[36] = _mul(t[34], t[35]);
        t[37] = _add(t[33], t[36]);
        t[38] = local[332];
        t[39] = _c(1024);
        t[40] = _mul(t[38], t[39]);
        t[41] = _add(t[37], t[40]);
        t[42] = local[333];
        t[43] = _c(2048);
        t[44] = _mul(t[42], t[43]);
        t[45] = _add(t[41], t[44]);
        t[46] = local[334];
        t[47] = _c(4096);
        t[48] = _mul(t[46], t[47]);
        t[49] = _add(t[45], t[48]);
        t[50] = local[335];
        t[51] = _c(8192);
        t[52] = _mul(t[50], t[51]);
        t[53] = _add(t[49], t[52]);
        t[54] = local[336];
        t[55] = _c(16384);
        t[56] = _mul(t[54], t[55]);
        t[57] = _add(t[53], t[56]);
        t[58] = local[337];
        t[59] = _c(32768);
        t[60] = _mul(t[58], t[59]);
        t[61] = _add(t[57], t[60]);
        t[62] = local[338];
        t[63] = _c(65536);
        t[64] = _mul(t[62], t[63]);
        t[65] = _add(t[61], t[64]);
        t[66] = local[339];
        t[67] = _c(131072);
        t[68] = _mul(t[66], t[67]);
        t[69] = _add(t[65], t[68]);
        t[70] = local[340];
        t[71] = _c(262144);
        t[72] = _mul(t[70], t[71]);
        t[73] = _add(t[69], t[72]);
        t[74] = local[341];
        t[75] = _c(524288);
        t[76] = _mul(t[74], t[75]);
        t[77] = _add(t[73], t[76]);
        t[78] = local[342];
        t[79] = _c(1048576);
        t[80] = _mul(t[78], t[79]);
        t[81] = _add(t[77], t[80]);
        t[82] = local[343];
        t[83] = _c(2097152);
        t[84] = _mul(t[82], t[83]);
        t[85] = _add(t[81], t[84]);
        t[86] = local[344];
        t[87] = _c(4194304);
        t[88] = _mul(t[86], t[87]);
        t[89] = _add(t[85], t[88]);
        t[90] = local[345];
        t[91] = _c(8388608);
        t[92] = _mul(t[90], t[91]);
        t[93] = _add(t[89], t[92]);
        t[94] = local[346];
        t[95] = _c(16777216);
        t[96] = _mul(t[94], t[95]);
        t[97] = _add(t[93], t[96]);
        t[98] = local[347];
        t[99] = _c(33554432);
        t[100] = _mul(t[98], t[99]);
        t[101] = _add(t[97], t[100]);
        t[102] = local[348];
        t[103] = _c(67108864);
        t[104] = _mul(t[102], t[103]);
        t[105] = _add(t[101], t[104]);
        t[106] = local[349];
        t[107] = _c(134217728);
        t[108] = _mul(t[106], t[107]);
        t[109] = _add(t[105], t[108]);
        t[110] = local[350];
        t[111] = _c(268435456);
        t[112] = _mul(t[110], t[111]);
        t[113] = _add(t[109], t[112]);
        t[114] = local[351];
        t[115] = _c(536870912);
        t[116] = _mul(t[114], t[115]);
        t[117] = _add(t[113], t[116]);
        t[118] = local[352];
        t[119] = _c(1073741824);
        t[120] = _mul(t[118], t[119]);
        t[121] = _add(t[117], t[120]);
        t[122] = local[353];
        t[123] = _c(2147483648);
        t[124] = _mul(t[122], t[123]);
        t[125] = _add(t[121], t[124]);
        t[126] = local[354];
        t[127] = _c(4294967296);
        t[128] = _mul(t[126], t[127]);
        t[129] = _add(t[125], t[128]);
        t[130] = local[355];
        t[131] = _c(8589934592);
        t[132] = _mul(t[130], t[131]);
        t[133] = _add(t[129], t[132]);
        t[134] = local[356];
        t[135] = _c(17179869184);
        t[136] = _mul(t[134], t[135]);
        t[137] = _add(t[133], t[136]);
        t[138] = local[357];
        t[139] = _c(34359738368);
        t[140] = _mul(t[138], t[139]);
        t[141] = _add(t[137], t[140]);
        t[142] = local[358];
        t[143] = _c(68719476736);
        t[144] = _mul(t[142], t[143]);
        t[145] = _add(t[141], t[144]);
        t[146] = local[359];
        t[147] = _c(137438953472);
        t[148] = _mul(t[146], t[147]);
        t[149] = _add(t[145], t[148]);
        t[150] = local[360];
        t[151] = _c(274877906944);
        t[152] = _mul(t[150], t[151]);
        t[153] = _add(t[149], t[152]);
        t[154] = local[361];
        t[155] = _c(549755813888);
        t[156] = _mul(t[154], t[155]);
        t[157] = _add(t[153], t[156]);
        t[158] = local[362];
        t[159] = _c(1099511627776);
        t[160] = _mul(t[158], t[159]);
        t[161] = _add(t[157], t[160]);
        t[162] = local[363];
        t[163] = _c(2199023255552);
        t[164] = _mul(t[162], t[163]);
        t[165] = _add(t[161], t[164]);
        t[166] = local[364];
        t[167] = _c(4398046511104);
        t[168] = _mul(t[166], t[167]);
        t[169] = _add(t[165], t[168]);
        t[170] = local[365];
        t[171] = _c(8796093022208);
        t[172] = _mul(t[170], t[171]);
        t[173] = _add(t[169], t[172]);
        t[174] = local[366];
        t[175] = _c(17592186044416);
        t[176] = _mul(t[174], t[175]);
        t[177] = _add(t[173], t[176]);
        t[178] = local[367];
        t[179] = _c(35184372088832);
        t[180] = _mul(t[178], t[179]);
        t[181] = _add(t[177], t[180]);
        t[182] = local[368];
        t[183] = _c(70368744177664);
        t[184] = _mul(t[182], t[183]);
        t[185] = _add(t[181], t[184]);
        t[186] = local[369];
        t[187] = _c(140737488355328);
        t[188] = _mul(t[186], t[187]);
        t[189] = _add(t[185], t[188]);
        t[190] = _sub(t[0], t[189]);
        return t[190];
    }
}

library TickConstraints {
    function foldConstraints(FriFolding.E[] memory local, FriFolding.E[] memory next, uint64[] memory pub, ConstraintEval.Sels memory s, FriFolding.E memory alpha) internal view returns (FriFolding.E memory acc) {
        acc = TickC0.fold(local, next, pub, s, alpha, acc);
        acc = TickC1.fold(local, next, pub, s, alpha, acc);
        acc = TickC2.fold(local, next, pub, s, alpha, acc);
        acc = TickC3.fold(local, next, pub, s, alpha, acc);
        acc = TickC4.fold(local, next, pub, s, alpha, acc);
        acc = TickC5.fold(local, next, pub, s, alpha, acc);
        acc = TickC6.fold(local, next, pub, s, alpha, acc);
        acc = TickC7.fold(local, next, pub, s, alpha, acc);
        acc = TickC8.fold(local, next, pub, s, alpha, acc);
        acc = TickC9.fold(local, next, pub, s, alpha, acc);
        acc = TickC10.fold(local, next, pub, s, alpha, acc);
        acc = TickC11.fold(local, next, pub, s, alpha, acc);
        acc = TickC12.fold(local, next, pub, s, alpha, acc);
        acc = TickC13.fold(local, next, pub, s, alpha, acc);
        acc = TickC14.fold(local, next, pub, s, alpha, acc);
        acc = TickC15.fold(local, next, pub, s, alpha, acc);
        acc = TickC16.fold(local, next, pub, s, alpha, acc);
        acc = TickC17.fold(local, next, pub, s, alpha, acc);
        acc = TickC18.fold(local, next, pub, s, alpha, acc);
        acc = TickC19.fold(local, next, pub, s, alpha, acc);
        acc = TickC20.fold(local, next, pub, s, alpha, acc);
        acc = TickC21.fold(local, next, pub, s, alpha, acc);
        acc = TickC22.fold(local, next, pub, s, alpha, acc);
        acc = TickC23.fold(local, next, pub, s, alpha, acc);
        acc = TickC24.fold(local, next, pub, s, alpha, acc);
        acc = TickC25.fold(local, next, pub, s, alpha, acc);
        acc = TickC26.fold(local, next, pub, s, alpha, acc);
        acc = TickC27.fold(local, next, pub, s, alpha, acc);
        acc = TickC28.fold(local, next, pub, s, alpha, acc);
        acc = TickC29.fold(local, next, pub, s, alpha, acc);
        acc = TickC30.fold(local, next, pub, s, alpha, acc);
        acc = TickC31.fold(local, next, pub, s, alpha, acc);
        acc = TickC32.fold(local, next, pub, s, alpha, acc);
        acc = TickC33.fold(local, next, pub, s, alpha, acc);
        acc = TickC34.fold(local, next, pub, s, alpha, acc);
        acc = TickC35.fold(local, next, pub, s, alpha, acc);
        acc = TickC36.fold(local, next, pub, s, alpha, acc);
        acc = TickC37.fold(local, next, pub, s, alpha, acc);
        acc = TickC38.fold(local, next, pub, s, alpha, acc);
    }
}
