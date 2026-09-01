// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

/**
 * RollaFarmPool — the real-money liquidity behind the game, in GME.
 *
 * Two sides share one GME balance:
 *
 *  - LIQUIDITY PROVIDERS (the "house") deposit GME and receive shares.
 *    Their claim is on `houseEquity = gmeBalance - playerLiabilities`.
 *    When players net-lose, house equity rises and every share is worth
 *    more; when players net-win, it falls. This is farming the house edge,
 *    honestly: LPs are the counterparty, not renting a fee stream.
 *
 *  - PLAYERS deposit GME into a withdrawable game balance and play. The
 *    game server (the `operator`) reports settled results with `settle`,
 *    which moves GME between a player's balance and house equity. Players
 *    withdraw their balance whenever they like.
 *
 * SOLVENCY INVARIANT, enforced on every mutating path:
 *      sum(playerBalance) == playerLiabilities <= gme.balanceOf(this)
 * so player balances are always fully backed by real GME in the contract,
 * and LP shares only ever claim the surplus.
 *
 * TRUST MODEL — READ THIS.
 *  The operator is trusted to report game results honestly. A compromised
 *  operator cannot mint GME or break solvency, but within the balance it
 *  can misattribute wins/losses among accounts. Blast radius is bounded by
 *  `maxSettlePerRound` and the owner's `pause` / `setOperator`. This
 *  contract is UNAUDITED. Fund it as beta. The right endgame is a
 *  provably-fair on-chain settlement that removes operator trust entirely.
 */
contract RollaFarmPool is Ownable, Pausable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    IERC20 public immutable gme;
    address public operator;

    uint256 public totalShares;
    mapping(address => uint256) public shares;

    uint256 public playerLiabilities;              // == sum of playerBalance
    mapping(address => uint256) public playerBalance;

    uint256 public maxSettlePerRound;              // guard on a single settle()

    event LiquidityAdded(address indexed lp, uint256 gmeIn, uint256 sharesMinted);
    event LiquidityRemoved(address indexed lp, uint256 sharesBurned, uint256 gmeOut);
    event PlayerDeposit(address indexed player, uint256 amount);
    event PlayerWithdraw(address indexed player, uint256 amount);
    event Settled(address indexed player, int256 delta, uint256 newBalance);
    event OperatorSet(address operator);
    event MaxSettleSet(uint256 maxPerRound);

    error NotOperator();
    error ZeroAmount();
    error InsufficientShares();
    error InsufficientPlayerBalance();
    error InsufficientHouseEquity();
    error SettleTooLarge();
    error Insolvent();
    error LengthMismatch();

    constructor(address gme_, address operator_, uint256 maxSettlePerRound_) Ownable(msg.sender) {
        gme = IERC20(gme_);
        operator = operator_;
        maxSettlePerRound = maxSettlePerRound_;
    }

    modifier onlyOperator() {
        if (msg.sender != operator) revert NotOperator();
        _;
    }

    /* ----------------------------- views ----------------------------- */

    /// GME sitting in the contract right now.
    function gmeBalance() public view returns (uint256) {
        return gme.balanceOf(address(this));
    }

    /// The LP-owned surplus: total GME minus what players can withdraw.
    function houseEquity() public view returns (uint256) {
        uint256 bal = gmeBalance();
        return bal > playerLiabilities ? bal - playerLiabilities : 0;
    }

    /// GME value of one LP's shares.
    function shareValue(address lp) external view returns (uint256) {
        if (totalShares == 0) return 0;
        return (shares[lp] * houseEquity()) / totalShares;
    }

    /* -------------------------- liquidity (LP) ------------------------ */

    /// Deposit GME as house liquidity; mint shares against current equity.
    function addLiquidity(uint256 amount) external nonReentrant whenNotPaused returns (uint256 minted) {
        if (amount == 0) revert ZeroAmount();
        uint256 equityBefore = houseEquity();
        gme.safeTransferFrom(msg.sender, address(this), amount);

        // First provider sets the peg 1 share == 1 GME; later providers mint
        // pro-rata to the equity they are joining.
        minted = totalShares == 0 || equityBefore == 0
            ? amount
            : (amount * totalShares) / equityBefore;
        if (minted == 0) revert ZeroAmount();

        totalShares += minted;
        shares[msg.sender] += minted;
        emit LiquidityAdded(msg.sender, amount, minted);
        _checkSolvency();
    }

    /// Burn shares for their pro-rata slice of house equity.
    function removeLiquidity(uint256 shareAmount) external nonReentrant returns (uint256 gmeOut) {
        if (shareAmount == 0) revert ZeroAmount();
        if (shares[msg.sender] < shareAmount) revert InsufficientShares();

        gmeOut = (shareAmount * houseEquity()) / totalShares;
        shares[msg.sender] -= shareAmount;
        totalShares -= shareAmount;

        // Never pay out player-owed GME.
        if (gmeOut > houseEquity() + 0) { /* houseEquity already excludes liabilities */ }
        gme.safeTransfer(msg.sender, gmeOut);
        emit LiquidityRemoved(msg.sender, shareAmount, gmeOut);
        _checkSolvency();
    }

    /* ---------------------------- players ----------------------------- */

    /// Deposit GME into a withdrawable game balance.
    function playerDeposit(uint256 amount) external nonReentrant whenNotPaused {
        if (amount == 0) revert ZeroAmount();
        gme.safeTransferFrom(msg.sender, address(this), amount);
        playerBalance[msg.sender] += amount;
        playerLiabilities += amount;
        emit PlayerDeposit(msg.sender, amount);
        _checkSolvency();
    }

    /// Withdraw from your game balance at any time (no lockup).
    function playerWithdraw(uint256 amount) external nonReentrant {
        if (amount == 0) revert ZeroAmount();
        if (playerBalance[msg.sender] < amount) revert InsufficientPlayerBalance();
        playerBalance[msg.sender] -= amount;
        playerLiabilities -= amount;
        gme.safeTransfer(msg.sender, amount);
        emit PlayerWithdraw(msg.sender, amount);
        _checkSolvency();
    }

    /* --------------------------- settlement --------------------------- */

    /**
     * Apply a settled game result. delta > 0 pays the player out of house
     * equity (a win); delta < 0 moves the stake into house equity (a loss).
     * Bounded per call, solvency-checked, pausable.
     */
    function settle(address player, int256 delta) external onlyOperator whenNotPaused nonReentrant {
        _settleOne(player, delta);
        _checkSolvency();
    }

    /**
     * OPTIMIZATION: settle a whole round of players in one transaction.
     * Atomic (reverts all on any bad entry), each entry bounded by
     * maxSettlePerRound, solvency checked once at the end. The operator
     * should order losses before wins so a win never fails for lack of
     * equity that the same round's losses would have provided.
     */
    function settleBatch(address[] calldata players, int256[] calldata deltas)
        external onlyOperator whenNotPaused nonReentrant
    {
        if (players.length != deltas.length) revert LengthMismatch();
        for (uint256 i = 0; i < players.length; i++) {
            if (deltas[i] != 0) _settleOne(players[i], deltas[i]);
        }
        _checkSolvency();
    }

    function _settleOne(address player, int256 delta) private {
        uint256 mag = delta < 0 ? uint256(-delta) : uint256(delta);
        if (mag == 0) revert ZeroAmount();
        if (mag > maxSettlePerRound) revert SettleTooLarge();

        if (delta > 0) {
            if (houseEquity() < mag) revert InsufficientHouseEquity();  // pool must cover the win
            playerBalance[player] += mag;
            playerLiabilities += mag;
        } else {
            if (playerBalance[player] < mag) revert InsufficientPlayerBalance();
            playerBalance[player] -= mag;
            playerLiabilities -= mag;
        }
        emit Settled(player, delta, playerBalance[player]);
    }

    /* ----------------------------- admin ------------------------------ */

    function setOperator(address op) external onlyOwner { operator = op; emit OperatorSet(op); }
    function setMaxSettlePerRound(uint256 m) external onlyOwner { maxSettlePerRound = m; emit MaxSettleSet(m); }
    function pause() external onlyOwner { _pause(); }
    function unpause() external onlyOwner { _unpause(); }

    function _checkSolvency() private view {
        if (playerLiabilities > gmeBalance()) revert Insolvent();
    }
}
