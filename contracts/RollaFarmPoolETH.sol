// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

/**
 * RollaFarmPoolETH — the native-ETH version of the game's liquidity vault.
 *
 * Identical model to RollaFarmPool, but denominated in native ETH instead
 * of an ERC-20: LPs add ETH liquidity for shares against house equity,
 * players deposit a withdrawable ETH balance, and the operator settles game
 * results with settle / settleBatch, bounded by a per-round cap and the
 * solvency invariant (player balances always fully backed by ETH held).
 *
 * Same trust model and caveats as the ERC-20 pool: one operator key bounded
 * by maxSettlePerRound + pause + solvency, off-chain position caps, and it
 * is UNAUDITED — fund as beta.
 */
contract RollaFarmPoolETH is Ownable, Pausable, ReentrancyGuard {
    address public operator;

    uint256 public totalShares;
    mapping(address => uint256) public shares;

    uint256 public playerLiabilities;              // == sum of playerBalance
    mapping(address => uint256) public playerBalance;

    uint256 public maxSettlePerRound;

    event LiquidityAdded(address indexed lp, uint256 ethIn, uint256 sharesMinted);
    event LiquidityRemoved(address indexed lp, uint256 sharesBurned, uint256 ethOut);
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
    error TransferFailed();

    constructor(address operator_, uint256 maxSettlePerRound_) Ownable(msg.sender) {
        operator = operator_;
        maxSettlePerRound = maxSettlePerRound_;
    }

    modifier onlyOperator() {
        if (msg.sender != operator) revert NotOperator();
        _;
    }

    /* ----------------------------- views ----------------------------- */

    /// ETH held by the vault (named ethBalance to mirror the ERC-20 pool's API).
    function ethBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function houseEquity() public view returns (uint256) {
        uint256 bal = address(this).balance;
        return bal > playerLiabilities ? bal - playerLiabilities : 0;
    }

    function shareValue(address lp) external view returns (uint256) {
        if (totalShares == 0) return 0;
        return (shares[lp] * houseEquity()) / totalShares;
    }

    /* -------------------------- liquidity (LP) ------------------------ */

    function addLiquidity() external payable nonReentrant whenNotPaused returns (uint256 minted) {
        uint256 amount = msg.value;
        if (amount == 0) revert ZeroAmount();
        // equity BEFORE this deposit = balance already includes msg.value, so subtract it
        uint256 equityBefore = houseEquity() - amount;

        minted = totalShares == 0 || equityBefore == 0 ? amount : (amount * totalShares) / equityBefore;
        if (minted == 0) revert ZeroAmount();

        totalShares += minted;
        shares[msg.sender] += minted;
        emit LiquidityAdded(msg.sender, amount, minted);
        _checkSolvency();
    }

    function removeLiquidity(uint256 shareAmount) external nonReentrant returns (uint256 ethOut) {
        if (shareAmount == 0) revert ZeroAmount();
        if (shares[msg.sender] < shareAmount) revert InsufficientShares();

        ethOut = (shareAmount * houseEquity()) / totalShares;
        shares[msg.sender] -= shareAmount;
        totalShares -= shareAmount;
        _send(msg.sender, ethOut);
        emit LiquidityRemoved(msg.sender, shareAmount, ethOut);
        _checkSolvency();
    }

    /* ---------------------------- players ----------------------------- */

    function playerDeposit() external payable nonReentrant whenNotPaused {
        if (msg.value == 0) revert ZeroAmount();
        playerBalance[msg.sender] += msg.value;
        playerLiabilities += msg.value;
        emit PlayerDeposit(msg.sender, msg.value);
        _checkSolvency();
    }

    function playerWithdraw(uint256 amount) external nonReentrant {
        if (amount == 0) revert ZeroAmount();
        if (playerBalance[msg.sender] < amount) revert InsufficientPlayerBalance();
        playerBalance[msg.sender] -= amount;
        playerLiabilities -= amount;
        _send(msg.sender, amount);
        emit PlayerWithdraw(msg.sender, amount);
        _checkSolvency();
    }

    /* --------------------------- settlement --------------------------- */

    function settle(address player, int256 delta) external onlyOperator whenNotPaused nonReentrant {
        _settleOne(player, delta);
        _checkSolvency();
    }

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
            if (houseEquity() < mag) revert InsufficientHouseEquity();
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

    function _send(address to, uint256 amount) private {
        if (amount == 0) return;
        (bool ok, ) = to.call{value: amount}("");
        if (!ok) revert TransferFailed();
    }

    function _checkSolvency() private view {
        if (playerLiabilities > address(this).balance) revert Insolvent();
    }
}
