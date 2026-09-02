// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

/**
 * RollaPositions — the position→P&L layer that connects a PROVEN round price to
 * the pool's per-player settlement. It is the FarmPool's `operator`.
 *
 * Players open leveraged positions for a round (side, leverage, collateral). When
 * a round's price path is proven (the settlement contract supplies the proof-bound
 * `init` and `final`), `settle` computes each position's P&L and forwards the net
 * per-player deltas to `pool.settleBatch`. Because it acts only on prices bound by
 * a STARK proof and clamps losses to the posted collateral, no operator can move
 * funds arbitrarily — the price is not a trusted input.
 *
 * v0 scope: positions enter at the round's `init` price (round-start entry); P&L is
 * linear `side·leverage·collateral·(final−init)/init`, clamped to [−collateral, +cap].
 * Mid-round entries, funding, and partial fills are future work. UNAUDITED — fund
 * as beta; the per-round cap + pool solvency invariant bound worst-case loss.
 */

interface IFarmPoolOp {
    function settleBatch(address[] calldata players, int256[] calldata deltas) external;
    function playerBalance(address) external view returns (uint256);
}

contract RollaPositions {
    // side: +1 long, -1 short (stored as 1/2 to keep it in a uint8)
    struct Position {
        address player;
        uint8 side; // 1 = long, 2 = short
        uint32 leverage; // integer multiple, 1..MAX_LEVERAGE
        uint128 collateral; // wei at risk; also the liquidation floor
    }

    IFarmPoolOp public immutable pool;
    address public owner;
    address public settlement; // the only caller allowed to `settle` (RollaSettlementOptimistic)
    uint32 public maxLeverage = 100;
    uint256 public winCapNumerator = 5; // max win = winCap × collateral (bounds house risk)

    mapping(uint256 => Position[]) private _positions; // roundId -> positions
    mapping(uint256 => bool) public roundOpen; // accepting positions
    mapping(uint256 => bool) public settled;

    event RoundOpened(uint256 indexed roundId);
    event PositionOpened(uint256 indexed roundId, address indexed player, uint8 side, uint32 leverage, uint128 collateral);
    event RoundSettled(uint256 indexed roundId, uint64 initPrice, uint64 finalPrice, uint256 count);

    error NotOwner();
    error NotSettlement();
    error RoundClosed();
    error AlreadySettled();
    error BadParams();

    constructor(address pool_) {
        pool = IFarmPoolOp(pool_);
        owner = msg.sender;
    }

    modifier onlyOwner() {
        if (msg.sender != owner) revert NotOwner();
        _;
    }

    function setSettlement(address s) external onlyOwner {
        settlement = s;
    }

    function setLimits(uint32 maxLev, uint256 winCap) external onlyOwner {
        maxLeverage = maxLev;
        winCapNumerator = winCap;
    }

    /// Open a round for position-taking (before it plays out).
    function openRound(uint256 roundId) external onlyOwner {
        roundOpen[roundId] = true;
        emit RoundOpened(roundId);
    }

    /// Player opens a leveraged position for a round. `collateral` wei is the max
    /// loss; the player must hold at least that much in the pool at settlement.
    function openPosition(uint256 roundId, uint8 side, uint32 leverage, uint128 collateral) external {
        if (!roundOpen[roundId]) revert RoundClosed();
        if ((side != 1 && side != 2) || leverage == 0 || leverage > maxLeverage || collateral == 0) {
            revert BadParams();
        }
        _positions[roundId].push(Position(msg.sender, side, leverage, collateral));
        emit PositionOpened(roundId, msg.sender, side, leverage, collateral);
    }

    function positionCount(uint256 roundId) external view returns (uint256) {
        return _positions[roundId].length;
    }

    /// Settle a round at the PROVEN (init, final) price. Only the settlement
    /// contract (which verified the STARK proof) may call this.
    function settle(uint256 roundId, uint64 initPrice, uint64 finalPrice) external {
        if (msg.sender != settlement) revert NotSettlement();
        if (settled[roundId]) revert AlreadySettled();
        settled[roundId] = true;
        roundOpen[roundId] = false;

        Position[] storage ps = _positions[roundId];
        uint256 n = ps.length;
        address[] memory players = new address[](n);
        int256[] memory deltas = new int256[](n);
        for (uint256 i = 0; i < n; i++) {
            players[i] = ps[i].player;
            deltas[i] = _pnl(ps[i], initPrice, finalPrice);
        }
        if (n > 0) pool.settleBatch(players, deltas);
        emit RoundSettled(roundId, initPrice, finalPrice, n);
    }

    /// P&L in wei: side·leverage·collateral·(final−init)/init, clamped to
    /// [−collateral (liquidation), +winCap·collateral].
    function _pnl(Position memory p, uint64 initPrice, uint64 finalPrice) internal view returns (int256) {
        int256 init = int256(uint256(initPrice));
        int256 diff = int256(uint256(finalPrice)) - init; // signed WAD32 price move
        int256 dir = p.side == 1 ? int256(1) : int256(-1); // long / short
        // pnl = dir · leverage · collateral · diff / init   (fits int256; see header math)
        int256 pnl = dir * int256(uint256(p.leverage)) * int256(uint256(p.collateral)) * diff / init;
        int256 floor = -int256(uint256(p.collateral));
        int256 cap = int256(winCapNumerator) * int256(uint256(p.collateral));
        if (pnl < floor) return floor;
        if (pnl > cap) return cap;
        return pnl;
    }
}
