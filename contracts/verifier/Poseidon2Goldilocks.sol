// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

/**
 * Poseidon2Goldilocks — an on-chain Poseidon2 permutation over the Goldilocks
 * field (p = 2^64 - 2^32 + 1), WIDTH=8, S-box x^7, 4 + 22 + 4 rounds, matching
 * p3's GenericPoseidon2LinearLayersGoldilocks byte-for-byte (round constants from
 * SmallRng::seed_from_u64(0x524e4732); verified against a from-scratch reference
 * AND p3::permute in zk/stark/src/bin/dump_poseidon2.rs).
 *
 * Used by the BATCH settlement track to recompute batchCommit from the N per-round
 * boundary tuples on-chain (a boundary-only sponge, ~N permutations).
 */
library Poseidon2Goldilocks {
    uint256 internal constant P = 0xFFFFFFFF00000001;

    function _rc() private pure returns (uint64[86] memory rc) {
        rc[0] = 3190809921216790306;
        rc[1] = 2061233831667623786;
        rc[2] = 12943257468881083071;
        rc[3] = 7944647135301829687;
        rc[4] = 11753129147867070734;
        rc[5] = 7055680575350131456;
        rc[6] = 12095111045140343830;
        rc[7] = 15938255617511527188;
        rc[8] = 6738348313356450059;
        rc[9] = 3397737849358247907;
        rc[10] = 16995029669831541223;
        rc[11] = 16967086954624655997;
        rc[12] = 17400105285284451411;
        rc[13] = 13585090406737787674;
        rc[14] = 11389257267932716862;
        rc[15] = 13546121944871500437;
        rc[16] = 18367847797133610002;
        rc[17] = 16757991010691094792;
        rc[18] = 8224481720706548568;
        rc[19] = 16184555977510616523;
        rc[20] = 6834912832310748563;
        rc[21] = 14833433459794113100;
        rc[22] = 6376459877424594984;
        rc[23] = 3585044839441119616;
        rc[24] = 17640582940639582918;
        rc[25] = 13103827463832422636;
        rc[26] = 4069076934584835917;
        rc[27] = 8718852187264259506;
        rc[28] = 16769282395877618060;
        rc[29] = 11709919910566904337;
        rc[30] = 842051891393273875;
        rc[31] = 1829059395532633755;
        rc[32] = 11535240082389913561;
        rc[33] = 15286609852469194047;
        rc[34] = 6093440021452635865;
        rc[35] = 17929072220854756566;
        rc[36] = 18026211464894882654;
        rc[37] = 4209130498568082372;
        rc[38] = 1083147722509993398;
        rc[39] = 12827714021214175656;
        rc[40] = 9456802045364226801;
        rc[41] = 2719246034276775798;
        rc[42] = 14817368766785333575;
        rc[43] = 8280034197029751618;
        rc[44] = 8690250456520266308;
        rc[45] = 6787914670586796481;
        rc[46] = 7620768449968471437;
        rc[47] = 18327123543218531061;
        rc[48] = 4426627939676467442;
        rc[49] = 2261773222162680887;
        rc[50] = 16190258727757153121;
        rc[51] = 11391031632855393164;
        rc[52] = 2172068337499128792;
        rc[53] = 10747306146043756198;
        rc[54] = 4191546964763013567;
        rc[55] = 6164154306581794660;
        rc[56] = 16349714741265903096;
        rc[57] = 9076835978074827671;
        rc[58] = 6215279470318964383;
        rc[59] = 6535947547649303690;
        rc[60] = 10526638822479071859;
        rc[61] = 14632182004098619490;
        rc[62] = 4512167570798606802;
        rc[63] = 13463090607531810969;
        rc[64] = 12956254128619141115;
        rc[65] = 12556055180612660009;
        rc[66] = 10853252986313201337;
        rc[67] = 803298884028157541;
        rc[68] = 16907593969993613427;
        rc[69] = 7264593689217538343;
        rc[70] = 13700651233006599974;
        rc[71] = 11338441450839269736;
        rc[72] = 12442434307540559018;
        rc[73] = 15717769302928294011;
        rc[74] = 6617912249729353401;
        rc[75] = 15321978335825786204;
        rc[76] = 5696328053842704790;
        rc[77] = 4978339223067891752;
        rc[78] = 13237596924947018564;
        rc[79] = 13183852001317494227;
        rc[80] = 6636555302682829132;
        rc[81] = 442935156445016326;
        rc[82] = 829705547527649687;
        rc[83] = 13857739042002936842;
        rc[84] = 10086193551854613157;
        rc[85] = 13425047504304286867;
    }

    // internal diagonal (MATRIX_DIAG_8_GOLDILOCKS), canonical
    function _diag(uint256 i) private pure returns (uint256) {
        if (i == 0) return 0xfffffffeffffffff; // -2
        if (i == 1) return 1;
        if (i == 2) return 2;
        if (i == 3) return 0x7fffffff80000001; // 1/2
        if (i == 4) return 3;
        if (i == 5) return 0x7fffffff80000000; // -1/2
        if (i == 6) return 0xfffffffefffffffe; // -3
        return 0xfffffffefffffffd; // -4
    }

    function _sbox(uint256 x) private pure returns (uint256) {
        uint256 x2 = mulmod(x, x, P);
        uint256 x4 = mulmod(x2, x2, P);
        uint256 x6 = mulmod(x4, x2, P);
        return mulmod(x6, x, P); // x^7
    }

    /// External MDS light permutation (M4 per block of 4, then outer circulant).
    function _externalMds(uint256[8] memory s) private pure {
        for (uint256 c = 0; c < 2; c++) {
            uint256 b = c * 4;
            uint256 x0 = s[b];
            uint256 x1 = s[b + 1];
            uint256 x2 = s[b + 2];
            uint256 x3 = s[b + 3];
            uint256 t01 = addmod(x0, x1, P);
            uint256 t23 = addmod(x2, x3, P);
            uint256 t0123 = addmod(t01, t23, P);
            uint256 t01123 = addmod(t0123, x1, P);
            uint256 t01233 = addmod(t0123, x3, P);
            s[b + 3] = addmod(t01233, addmod(x0, x0, P), P);
            s[b + 1] = addmod(t01123, addmod(x2, x2, P), P);
            s[b] = addmod(t01123, t01, P);
            s[b + 2] = addmod(t01233, t23, P);
        }
        uint256 s0 = addmod(s[0], s[4], P);
        uint256 s1 = addmod(s[1], s[5], P);
        uint256 s2 = addmod(s[2], s[6], P);
        uint256 s3 = addmod(s[3], s[7], P);
        s[0] = addmod(s[0], s0, P);
        s[1] = addmod(s[1], s1, P);
        s[2] = addmod(s[2], s2, P);
        s[3] = addmod(s[3], s3, P);
        s[4] = addmod(s[4], s0, P);
        s[5] = addmod(s[5], s1, P);
        s[6] = addmod(s[6], s2, P);
        s[7] = addmod(s[7], s3, P);
    }

    function _internal(uint256[8] memory s) private pure {
        uint256 sum;
        for (uint256 i = 0; i < 8; i++) sum = addmod(sum, s[i], P);
        for (uint256 i = 0; i < 8; i++) {
            s[i] = addmod(mulmod(s[i], _diag(i), P), sum, P);
        }
    }

    /// The Poseidon2 permutation on an 8-lane state.
    function permute(uint256[8] memory s) internal pure returns (uint256[8] memory) {
        uint64[86] memory rc = _rc();
        _externalMds(s);
        uint256 k = 0;
        // 4 beginning full rounds
        for (uint256 r = 0; r < 4; r++) {
            for (uint256 i = 0; i < 8; i++) s[i] = addmod(s[i], rc[k++], P);
            for (uint256 i = 0; i < 8; i++) s[i] = _sbox(s[i]);
            _externalMds(s);
        }
        // 22 partial rounds
        for (uint256 r = 0; r < 22; r++) {
            s[0] = addmod(s[0], rc[k++], P);
            s[0] = _sbox(s[0]);
            _internal(s);
        }
        // 4 ending full rounds
        for (uint256 r = 0; r < 4; r++) {
            for (uint256 i = 0; i < 8; i++) s[i] = addmod(s[i], rc[k++], P);
            for (uint256 i = 0; i < 8; i++) s[i] = _sbox(s[i]);
            _externalMds(s);
        }
        return s;
    }

    /// Boundary-only sponge: absorb each round's 5-tuple (seed, roundId, init,
    /// final, orderLogHash) into lanes 0..5, permute; batchCommit = lane 0 at end.
    function batchCommit(uint64[5][] memory tuples) internal pure returns (uint64) {
        uint256[8] memory s;
        for (uint256 t = 0; t < tuples.length; t++) {
            for (uint256 k = 0; k < 5; k++) {
                s[k] = addmod(s[k], tuples[t][k], P);
            }
            s = permute(s);
        }
        return uint64(s[0]);
    }
}
