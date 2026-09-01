// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

/**
 * RollaSettlementZK — trustless, proof-gated settlement.
 *
 * Replaces the trusted operator. A round only settles if a zk proof verifies
 * that its results were computed correctly by the canonical fixed-point engine
 * (src/engine-fixed.js, mirrored in the SP1 guest) from its committed inputs.
 * No proof → no settlement. Nobody has to trust the server.
 *
 * Flow:
 *   1. Server commits H(serverSeed) before the round (published on-chain / off).
 *   2. After the round, the SP1 host proves the guest ran the engine on
 *      (serverSeed, clientSeed, orderLog) and produced these public values.
 *   3. Anyone submits (publicValues, proof); this contract verifies via the
 *      SP1 verifier against a fixed programVKey, checks the round is new and
 *      its committed seed-hash matches, then applies the settlement.
 *
 * The FarmPool's operator is set to THIS contract, so only proven rounds move
 * funds. `programVKey` pins exactly which engine binary is accepted; changing
 * the engine changes the vkey (owner-set, ideally behind a timelock).
 */

interface ISP1Verifier {
    function verifyProof(bytes32 programVKey, bytes calldata publicValues, bytes calldata proofBytes) external view;
}

interface IFarmPoolSettle {
    function settleBatch(address[] calldata players, int256[] calldata deltas) external;
}

contract RollaSettlementZK {
    /// Public values the guest commits, ABI-encoded as this struct.
    struct RoundPublic {
        uint256 roundId;
        bytes32 seedCommit;     // keccak/sha256(serverSeed) published before the round
        bytes32 orderLogHash;   // hash of the settled order log
        uint256 finalPrice;     // engine output (WAD)
        address[] players;      // settlement recipients
        int256[] deltas;        // net GME/ETH per player (WAD)
    }

    ISP1Verifier public immutable verifier;
    IFarmPoolSettle public immutable pool;
    bytes32 public programVKey;          // the accepted engine binary
    address public owner;

    mapping(uint256 => bool) public settled;          // roundId -> done (no double-settle)
    mapping(uint256 => bytes32) public roundCommit;   // roundId -> published seed commit

    event RoundSettled(uint256 indexed roundId, bytes32 seedCommit, uint256 finalPrice, uint256 players);
    event CommitPosted(uint256 indexed roundId, bytes32 seedCommit);
    event VKeySet(bytes32 vkey);

    error NotOwner();
    error AlreadySettled();
    error CommitMismatch();
    error LengthMismatch();

    constructor(address verifier_, address pool_, bytes32 programVKey_) {
        verifier = ISP1Verifier(verifier_);
        pool = IFarmPoolSettle(pool_);
        programVKey = programVKey_;
        owner = msg.sender;
    }

    /// Publish the seed commit before a round opens (binds the seed up front).
    function postCommit(uint256 roundId, bytes32 seedCommit) external {
        if (msg.sender != owner) revert NotOwner();
        if (roundCommit[roundId] != bytes32(0)) revert AlreadySettled();
        roundCommit[roundId] = seedCommit;
        emit CommitPosted(roundId, seedCommit);
    }

    /// Verify a round's proof and settle it. Permissionless to submit — a valid
    /// proof is the only authority. The seed commit must match what was posted.
    function settleRoundWithProof(bytes calldata publicValues, bytes calldata proofBytes) external {
        verifier.verifyProof(programVKey, publicValues, proofBytes);   // reverts if invalid

        RoundPublic memory r = abi.decode(publicValues, (RoundPublic));
        if (settled[r.roundId]) revert AlreadySettled();
        if (r.players.length != r.deltas.length) revert LengthMismatch();
        bytes32 posted = roundCommit[r.roundId];
        if (posted != bytes32(0) && posted != r.seedCommit) revert CommitMismatch();

        settled[r.roundId] = true;
        if (r.players.length > 0) pool.settleBatch(r.players, r.deltas);
        emit RoundSettled(r.roundId, r.seedCommit, r.finalPrice, r.players.length);
    }

    function setProgramVKey(bytes32 vkey) external {
        if (msg.sender != owner) revert NotOwner();
        programVKey = vkey;
        emit VKeySet(vkey);
    }
    function setOwner(address o) external { if (msg.sender != owner) revert NotOwner(); owner = o; }
}
