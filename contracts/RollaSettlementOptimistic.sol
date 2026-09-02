// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

/**
 * RollaSettlementOptimistic — keeper-cheap trustless settlement (Optimism/Arbitrum
 * model). The heavy STARK verify runs ONLY on dispute; the happy path is a single
 * storage write. This is what makes per-round settlement sustainable for keepers.
 *
 * Trust model: the round engine is DETERMINISTIC and the RoundAir proof binds
 * (init, final, seed, orderLogHash). So for a committed seed + real order flow
 * there is exactly ONE correct final price. Flow:
 *
 *   1. postCommit(roundId, seedCommit)        — before the round (commit-reveal).
 *   2. postRound(roundId, seed, orderLogHash, init, final) + bond
 *                                             — house posts the CLAIMED result.
 *                                               seedCommit must open to `seed`;
 *                                               orderLogHash must equal the real
 *                                               order flow recorded for the round.
 *   3a. disprove(roundId, proof)              — anyone submits a VALID proof with
 *                                               the same (seed, roundId, orderLogHash,
 *                                               init) but a DIFFERENT final. By
 *                                               determinism the house lied → its
 *                                               bond is slashed to the disprover,
 *                                               the round is voided.
 *   3b. finalize(roundId)                     — after the window with no disprove,
 *                                               settle at the claimed final.
 *
 * A correct claim CANNOT be disproved (no valid contradicting proof exists), and a
 * wrong claim is disprovable by anyone with the (public, deterministic) engine.
 * The only assumption is liveness: ≥1 honest watcher within the window.
 */

interface IRoundVerifierEntry {
    function verify(bytes calldata proof)
        external
        view
        returns (uint64 init, uint64 finalPrice, uint64 seed, uint64 roundId, uint64 orderLogHash);
}

interface ISettlePool {
    /// Settle per-player P&L for a round given the proof-bound init and final
    /// prices (RollaPositions computes deltas and forwards to the FarmPool).
    function settle(uint256 roundId, uint64 initPrice, uint64 finalPrice) external;
}

contract RollaSettlementOptimistic {
    struct Posting {
        address proposer;
        uint96 bond;
        uint64 initPrice;
        uint64 finalPrice;
        uint64 seed;
        uint64 orderLogHash;
        uint64 postedAt;
        bool finalized;
        bool voided;
    }

    IRoundVerifierEntry public immutable verifier;
    ISettlePool public immutable pool;
    address public owner;
    uint64 public challengeWindow; // seconds
    uint96 public minBond;

    mapping(uint256 => bytes32) public seedCommit; // roundId -> commit (before round)
    mapping(uint256 => uint64) public realOrderLogHash; // roundId -> real order flow hash
    mapping(uint256 => Posting) public postings;

    event CommitPosted(uint256 indexed roundId, bytes32 seedCommit);
    event OrderFlowRecorded(uint256 indexed roundId, uint64 orderLogHash);
    event RoundPosted(uint256 indexed roundId, address proposer, uint64 finalPrice, uint96 bond);
    event RoundDisproved(uint256 indexed roundId, address disprover, uint64 claimedFinal, uint64 provenFinal);
    event RoundFinalized(uint256 indexed roundId, uint64 finalPrice);

    error NotOwner();
    error BadBond();
    error Exists();
    error Unknown();
    error CommitMismatch();
    error OrderFlowMismatch();
    error WindowOpen();
    error WindowClosed();
    error Done();

    constructor(address verifier_, address pool_, uint64 window_, uint96 minBond_) {
        verifier = IRoundVerifierEntry(verifier_);
        pool = ISettlePool(pool_);
        owner = msg.sender;
        challengeWindow = window_;
        minBond = minBond_;
    }

    modifier onlyOwner() {
        if (msg.sender != owner) revert NotOwner();
        _;
    }

    /// Publish the seed commit before the round opens (binds randomness up front).
    function postCommit(uint256 roundId, bytes32 commit) external onlyOwner {
        if (seedCommit[roundId] != bytes32(0)) revert Exists();
        seedCommit[roundId] = commit;
        emit CommitPosted(roundId, commit);
    }

    /// Record the real order-flow hash for a round (from processing on-chain
    /// orders). In production this is set by the order pipeline; the disprove
    /// proof is bound to exactly this value.
    function recordOrderFlow(uint256 roundId, uint64 orderLogHash) external onlyOwner {
        realOrderLogHash[roundId] = orderLogHash;
        emit OrderFlowRecorded(roundId, orderLogHash);
    }

    /// House posts the claimed round result + a bond. Cheap: one storage write,
    /// no verification. Opens the challenge window.
    function postRound(
        uint256 roundId,
        uint64 seed,
        uint64 orderLogHash,
        uint64 initPrice,
        uint64 finalPrice
    ) external payable {
        if (msg.value < minBond || msg.value > type(uint96).max) revert BadBond();
        if (postings[roundId].proposer != address(0)) revert Exists();
        bytes32 sc = seedCommit[roundId];
        if (sc != bytes32(0) && sc != keccak256(abi.encodePacked(seed))) revert CommitMismatch();
        uint64 realOf = realOrderLogHash[roundId];
        if (realOf != 0 && realOf != orderLogHash) revert OrderFlowMismatch();

        postings[roundId] = Posting({
            proposer: msg.sender,
            bond: uint96(msg.value),
            initPrice: initPrice,
            finalPrice: finalPrice,
            seed: seed,
            orderLogHash: orderLogHash,
            postedAt: uint64(block.timestamp),
            finalized: false,
            voided: false
        });
        emit RoundPosted(roundId, msg.sender, finalPrice, uint96(msg.value));
    }

    /// Disprove a posted result with a valid STARK proof whose bound inputs match
    /// but whose final price differs. Slashes the proposer's bond to the disprover.
    function disprove(uint256 roundId, bytes calldata proof) external {
        Posting storage p = postings[roundId];
        if (p.proposer == address(0)) revert Unknown();
        if (p.finalized || p.voided) revert Done();
        if (block.timestamp > p.postedAt + challengeWindow) revert WindowClosed();

        (uint64 init, uint64 finalPrice, uint64 seed, uint64 rid, uint64 orderLogHash) = verifier.verify(proof);
        // the proof must be about THIS round's committed inputs …
        require(rid == roundId, "roundId mismatch");
        require(seed == p.seed, "seed mismatch");
        require(orderLogHash == p.orderLogHash, "orderLogHash mismatch");
        require(init == p.initPrice, "init mismatch");
        // … and contradict the claimed final. Determinism ⇒ the claim was wrong.
        require(finalPrice != p.finalPrice, "final matches: claim stands");

        p.voided = true;
        uint96 bond = p.bond;
        p.bond = 0;
        emit RoundDisproved(roundId, msg.sender, p.finalPrice, finalPrice);
        (bool ok,) = msg.sender.call{value: bond}("");
        require(ok, "bond transfer failed");
    }

    /// Finalize a round after the challenge window with no successful disprove.
    /// Settles per-player P&L at the claimed (now-final) price and returns the bond.
    function finalize(uint256 roundId) external {
        Posting storage p = postings[roundId];
        if (p.proposer == address(0)) revert Unknown();
        if (p.finalized || p.voided) revert Done();
        if (block.timestamp <= p.postedAt + challengeWindow) revert WindowOpen();

        p.finalized = true;
        uint96 bond = p.bond;
        p.bond = 0;
        if (address(pool) != address(0)) pool.settle(roundId, p.initPrice, p.finalPrice);
        emit RoundFinalized(roundId, p.finalPrice);
        (bool ok,) = p.proposer.call{value: bond}("");
        require(ok, "bond refund failed");
    }

    function setOwner(address o) external onlyOwner {
        owner = o;
    }
}
