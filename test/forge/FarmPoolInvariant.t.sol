// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "forge-std/Test.sol";
import "forge-std/StdInvariant.sol";
import "../../contracts/RollaFarmPoolETH.sol";

/**
 * Stateful invariant fuzzing of the fund-custody layer (RollaFarmPoolETH). A
 * handler drives random adversarial sequences of LP/player/operator actions; the
 * invariants below must hold after EVERY sequence. This is the pre-audit battle
 * test for the one property that matters most: the pool can never become insolvent.
 */
contract FarmPoolHandler is Test {
    RollaFarmPoolETH public pool;
    address[] public actors;

    // ghost accounting of real ETH flows through the vault
    uint256 public ghostIn; // deposits (liquidity + player)
    uint256 public ghostOut; // withdrawals + net player wins paid out

    constructor(RollaFarmPoolETH _pool, address[] memory _actors) {
        pool = _pool;
        actors = _actors;
    }

    function _actor(uint256 seed) internal view returns (address) {
        return actors[seed % actors.length];
    }

    function addLiquidity(uint256 s, uint256 amt) public {
        address a = _actor(s);
        amt = bound(amt, 1, 20 ether);
        vm.deal(a, amt);
        vm.prank(a);
        try pool.addLiquidity{value: amt}() {
            ghostIn += amt;
        } catch {}
    }

    function removeLiquidity(uint256 s, uint256 shareAmt) public {
        address a = _actor(s);
        uint256 have = pool.shares(a);
        if (have == 0) return;
        shareAmt = bound(shareAmt, 1, have);
        uint256 balBefore = a.balance;
        vm.prank(a);
        try pool.removeLiquidity(shareAmt) {
            ghostOut += a.balance - balBefore;
        } catch {}
    }

    function playerDeposit(uint256 s, uint256 amt) public {
        address a = _actor(s);
        amt = bound(amt, 1, 20 ether);
        vm.deal(a, amt);
        vm.prank(a);
        try pool.playerDeposit{value: amt}() {
            ghostIn += amt;
        } catch {}
    }

    function playerWithdraw(uint256 s, uint256 amt) public {
        address a = _actor(s);
        uint256 have = pool.playerBalance(a);
        if (have == 0) return;
        amt = bound(amt, 1, have);
        uint256 balBefore = a.balance;
        vm.prank(a);
        try pool.playerWithdraw(amt) {
            ghostOut += a.balance - balBefore;
        } catch {}
    }

    /// The handler is the pool operator: settle a bounded per-player delta (models
    /// a proven round's P&L; magnitude bounded like the real per-round cap).
    function settle(uint256 s, int256 delta) public {
        address a = _actor(s);
        delta = int256(bound(delta, -5 ether, 5 ether));
        if (delta == 0) return;
        try pool.settle(a, delta) {} catch {}
    }
}

contract FarmPoolInvariantTest is StdInvariant, Test {
    RollaFarmPoolETH pool;
    FarmPoolHandler handler;
    address[] actors;

    function setUp() public {
        actors.push(address(0xA11CE));
        actors.push(address(0xB0B));
        actors.push(address(0xCA201));
        actors.push(address(0xD00D));

        pool = new RollaFarmPoolETH(address(this), 10 ether); // temp operator = this
        handler = new FarmPoolHandler(pool, actors);
        pool.setOperator(address(handler)); // operator can settle

        // seed some initial liquidity so wins are payable
        pool.addLiquidity{value: 50 ether}();

        targetContract(address(handler));
    }

    // THE critical invariant: the vault is always solvent — player balances are
    // always fully backed by ETH actually held.
    function invariant_solvency() public view {
        assertLe(pool.playerLiabilities(), address(pool).balance, "INSOLVENT: liabilities > balance");
    }

    // Accounting consistency: tracked liabilities equal the sum of player balances.
    function invariant_liabilitiesMatchBalances() public view {
        uint256 sum;
        for (uint256 i = 0; i < actors.length; i++) sum += pool.playerBalance(actors[i]);
        assertEq(sum, pool.playerLiabilities(), "liabilities != sum(playerBalance)");
    }

    // Share accounting consistency.
    function invariant_sharesConsistent() public view {
        uint256 sum;
        for (uint256 i = 0; i < actors.length; i++) sum += pool.shares(actors[i]);
        // the test contract also holds shares from the seed liquidity
        sum += pool.shares(address(this));
        assertEq(sum, pool.totalShares(), "shares != totalShares");
    }

    // No value creation from nothing: ETH out never exceeds ETH in + seed + wins
    // funded by house equity (i.e. the contract can't pay out more than it holds).
    function invariant_noFreeValue() public view {
        // vault balance == everything ever put in minus everything taken out
        // (seed 50 ether went in via the test contract, tracked separately)
        assertGe(address(pool).balance + handler.ghostOut(), handler.ghostIn(), "value leaked");
    }
}
