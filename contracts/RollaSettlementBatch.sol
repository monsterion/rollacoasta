// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

/**
 * RollaSettlementBatch — EAGER, dispute-free settlement of N rounds in one proof.
 *
 * The BatchRoundAir proves N rounds and binds each round's boundary tuple
 * (seed, roundId, init, final, orderLogHash) into a single public `batchCommit`
 * via a BOUNDARY-ONLY Poseidon2 sponge — one absorb PER ROUND, not per tick. That
 * choice is what makes eager settlement affordable: the contract recomputes
 * `batchCommit` from the N posted tuples in ~N Poseidon2 permutations (~a couple M
 * gas at N=256), instead of the O(N·R) a per-tick sponge would need.
 *
 * Flow (no watcher, no challenge window):
 *   1. postCommit(roundId, seedCommit)      — before each round (commit-reveal).
 *   2. recordOrderFlow(roundId, orderLogHash) — the round's order commitment.
 *   3. settleBatch(tuples, proof)            — verify the proof once, recompute
 *      batchCommit from the tuples and require it equals the proof's, check each
 *      round's seedCommit + recorded orderLogHash + chaining, then settle all N.
 *
 * Because the proof is bound to `batchCommit` and the contract recomputes it from
 * data it can independently check (committed seeds, recorded order flow, chained
 * inits), a rigged round cannot pass — no honest watcher required.
 */

import "./verifier/Poseidon2Goldilocks.sol";

interface IProofRegistry {
    function read(address submitter, uint256 proofId) external view returns (bytes memory);
}

interface IBatchVerifierEntry {
    /// Verify a BatchRoundAir proof; returns the single public value `batchCommit`.
    function verify(bytes calldata proof) external view returns (uint64 batchCommit);
}

interface ISettlePool {
    /// Settle a round at its proof-bound (init, final) price (RollaPositions).
    function settle(uint256 roundId, uint64 initPrice, uint64 finalPrice) external;
}

contract RollaSettlementBatch {
    IBatchVerifierEntry public immutable verifier;
    IProofRegistry public registry; // optional: settle with a chunk-stored proof
    ISettlePool public immutable pool;
    address public owner;

    mapping(uint256 => bytes32) public seedCommit; // roundId -> keccak(seed), pre-round
    mapping(uint256 => uint64) public orderLogHash; // roundId -> recorded order commitment
    mapping(uint256 => bool) public settled;

    event CommitPosted(uint256 indexed roundId, bytes32 seedCommit);
    event OrderFlowRecorded(uint256 indexed roundId, uint64 orderLogHash);
    event BatchSettled(uint256 indexed firstRoundId, uint256 count, uint64 batchCommit);
    event RoundSettled(uint256 indexed roundId, uint64 finalPrice);

    error NotOwner();
    error Exists();
    error LengthMismatch();
    error EmptyBatch();
    error CommitMissing();
    error CommitMismatch();
    error OrderFlowMismatch();
    error AlreadySettled();
    error ChainBroken();
    error BatchCommitMismatch();

    constructor(address verifier_, address pool_) {
        verifier = IBatchVerifierEntry(verifier_);
        pool = ISettlePool(pool_);
        owner = msg.sender;
    }

    modifier onlyOwner() {
        if (msg.sender != owner) revert NotOwner();
        _;
    }

    function postCommit(uint256 roundId, bytes32 commit) external onlyOwner {
        if (seedCommit[roundId] != bytes32(0)) revert Exists();
        seedCommit[roundId] = commit;
        emit CommitPosted(roundId, commit);
    }

    function recordOrderFlow(uint256 roundId, uint64 hash_) external onlyOwner {
        orderLogHash[roundId] = hash_;
        emit OrderFlowRecorded(roundId, hash_);
    }

    struct Round {
        uint256 roundId;
        uint64 seed; // revealed
        uint64 init;
        uint64 finalPrice;
    }

    /// Verify a batch of N rounds and settle all of them eagerly. `chained` = true
    /// requires each round's init to equal the previous round's final.
    function settleBatch(Round[] calldata rounds, bytes calldata proof, bool chained) external {
        _settleBatch(rounds, proof, chained);
    }

    /// Same, but with a proof previously chunk-stored in the ProofRegistry (for
    /// proofs exceeding the EVM per-tx calldata limit). This tx carries only the
    /// tiny proofId; the proof is read and verified via an internal call.
    function settleBatchWithRegistry(Round[] calldata rounds, uint256 proofId, bool chained) external {
        require(address(registry) != address(0), "no registry");
        _settleBatch(rounds, registry.read(msg.sender, proofId), chained);
    }

    function setRegistry(address r) external onlyOwner {
        registry = IProofRegistry(r);
    }

    function _settleBatch(Round[] calldata rounds, bytes memory proof, bool chained) internal {
        uint256 n = rounds.length;
        if (n == 0) revert EmptyBatch();

        // 1) cheap per-round binding checks + build tuples BEFORE the expensive
        //    verify, so bad inputs (wrong seed, missing order flow, replay, broken
        //    chain) fail without paying for proof verification.
        uint64[5][] memory tuples = new uint64[5][](n);
        for (uint256 i = 0; i < n; i++) {
            Round calldata r = rounds[i];
            bytes32 sc = seedCommit[r.roundId];
            if (sc == bytes32(0)) revert CommitMissing();
            if (sc != keccak256(abi.encodePacked(r.seed))) revert CommitMismatch();
            uint64 ofh = orderLogHash[r.roundId];
            if (ofh == 0) revert OrderFlowMismatch();
            if (settled[r.roundId]) revert AlreadySettled();
            if (chained && i > 0 && r.init != rounds[i - 1].finalPrice) revert ChainBroken();

            tuples[i][0] = r.seed;
            tuples[i][1] = uint64(r.roundId);
            tuples[i][2] = r.init;
            tuples[i][3] = r.finalPrice;
            tuples[i][4] = ofh;
        }

        // 2) verify the proof once → batchCommit
        uint64 bc = verifier.verify(proof);

        // 3) recompute batchCommit from the posted tuples (~N Poseidon2) and require
        //    it equals the proof's — ties the proven N rounds to the committed inputs.
        if (Poseidon2Goldilocks.batchCommit(tuples) != bc) revert BatchCommitMismatch();

        // 3) settle every round at its proof-bound (init, final)
        for (uint256 i = 0; i < n; i++) {
            settled[rounds[i].roundId] = true;
            if (address(pool) != address(0)) {
                pool.settle(rounds[i].roundId, rounds[i].init, rounds[i].finalPrice);
            }
            emit RoundSettled(rounds[i].roundId, rounds[i].finalPrice);
        }
        emit BatchSettled(rounds[0].roundId, n, bc);
    }

    function setOwner(address o) external onlyOwner {
        owner = o;
    }
}
