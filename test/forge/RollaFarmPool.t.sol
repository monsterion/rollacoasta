// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {Test} from "forge-std/Test.sol";
import {RollaFarmPool} from "../../contracts/RollaFarmPool.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MockGME is ERC20 {
    constructor() ERC20("GameStop Robinhood", "GME") {}
    function mint(address to, uint256 amt) external { _mint(to, amt); }
}

contract RollaFarmPoolTest is Test {
    RollaFarmPool pool;
    MockGME gme;
    address owner = address(0xA11CE);
    address op = address(0xBEEF);
    address lp1 = address(0x1111);
    address lp2 = address(0x2222);
    address alice = address(0xA1);
    address bob = address(0xB0);
    uint256 constant U = 1e18;

    function setUp() public {
        gme = new MockGME();
        vm.prank(owner);
        pool = new RollaFarmPool(address(gme), op, 100 * U);   // max settle 100 GME
        address[4] memory all = [lp1, lp2, alice, bob];
        for (uint256 i = 0; i < all.length; i++) {
            gme.mint(all[i], 1_000 * U);
            vm.prank(all[i]);
            gme.approve(address(pool), type(uint256).max);
        }
    }

    function _addLiq(address who, uint256 amt) internal returns (uint256) {
        vm.prank(who); return pool.addLiquidity(amt);
    }

    function test_firstLpPeg1to1() public {
        uint256 s = _addLiq(lp1, 100 * U);
        assertEq(s, 100 * U);
        assertEq(pool.houseEquity(), 100 * U);
        assertEq(pool.shareValue(lp1), 100 * U);
    }

    function test_secondLpProRata() public {
        _addLiq(lp1, 100 * U);
        uint256 s2 = _addLiq(lp2, 50 * U);
        assertEq(s2, 50 * U);                       // equity was 100 for 100 shares
        assertEq(pool.shareValue(lp2), 50 * U);
        assertEq(pool.shareValue(lp1), 100 * U);
    }

    function test_playerDepositIsFullyBacked() public {
        vm.prank(alice); pool.playerDeposit(30 * U);
        assertEq(pool.playerBalance(alice), 30 * U);
        assertEq(pool.playerLiabilities(), 30 * U);
        assertEq(pool.gmeBalance(), 30 * U);
        assertEq(pool.houseEquity(), 0);            // player GME is not house equity
    }

    function test_playerWithdrawAnytime() public {
        vm.prank(alice); pool.playerDeposit(30 * U);
        vm.prank(alice); pool.playerWithdraw(10 * U);
        assertEq(pool.playerBalance(alice), 20 * U);
        assertEq(gme.balanceOf(alice), 1_000 * U - 20 * U);
    }

    function test_lossFlowsToHouseWinFlowsFromHouse() public {
        _addLiq(lp1, 100 * U);                      // house equity 100
        vm.prank(alice); pool.playerDeposit(20 * U);

        // alice loses 20 -> goes to house
        vm.prank(op); pool.settle(alice, -20 * int256(U));
        assertEq(pool.playerBalance(alice), 0);
        assertEq(pool.houseEquity(), 120 * U);      // LPs richer
        assertEq(pool.shareValue(lp1), 120 * U);

        // bob deposits 5 and wins 30 -> paid from house
        vm.prank(bob); pool.playerDeposit(5 * U);
        vm.prank(op); pool.settle(bob, 30 * int256(U));
        assertEq(pool.playerBalance(bob), 35 * U);
        assertEq(pool.houseEquity(), 90 * U);       // 120 - 30
        vm.prank(bob); pool.playerWithdraw(35 * U); // real GME out
        assertEq(gme.balanceOf(bob), 1_000 * U - 5 * U + 35 * U);
    }

    function test_winCannotExceedHouseEquity() public {
        _addLiq(lp1, 10 * U);
        vm.prank(alice); pool.playerDeposit(1 * U);
        vm.prank(op); vm.expectRevert(RollaFarmPool.InsufficientHouseEquity.selector);
        pool.settle(alice, 50 * int256(U));         // 50 > 10 equity (and > maxSettle)
    }

    function test_settleGuards() public {
        _addLiq(lp1, 1_000 * U);
        vm.prank(alice); pool.playerDeposit(200 * U);
        vm.prank(op); vm.expectRevert(RollaFarmPool.SettleTooLarge.selector);
        pool.settle(alice, 101 * int256(U));        // > maxSettlePerRound 100
        vm.prank(bob); vm.expectRevert(RollaFarmPool.NotOperator.selector);
        pool.settle(alice, 10 * int256(U));         // not operator
    }

    function test_pauseHaltsPlayAndDepositsNotWithdrawals() public {
        _addLiq(lp1, 100 * U);
        vm.prank(alice); pool.playerDeposit(20 * U);
        vm.prank(owner); pool.pause();

        vm.prank(op); vm.expectRevert(); pool.settle(alice, 5 * int256(U));
        vm.prank(bob); vm.expectRevert(); pool.playerDeposit(5 * U);
        // withdrawals still work while paused — funds never frozen
        vm.prank(alice); pool.playerWithdraw(20 * U);
        assertEq(pool.playerBalance(alice), 0);
        vm.prank(lp1); pool.removeLiquidity(50 * U);
        assertGt(gme.balanceOf(lp1), 1_000 * U - 100 * U);
    }

    /// Solvency invariant holds across a randomized sequence of ops.
    function testFuzz_solvent(uint256 seed) public {
        _addLiq(lp1, 500 * U);
        address[2] memory players = [alice, bob];
        for (uint256 i = 0; i < 12; i++) {
            uint256 e = uint256(keccak256(abi.encode(seed, i)));
            address p = players[e % 2];
            uint256 kind = (e >> 8) % 4;
            uint256 amt = ((e >> 16) % 40 + 1) * U;
            if (kind == 0) { vm.prank(p); try pool.playerDeposit(amt) {} catch {} }
            else if (kind == 1) { vm.prank(p); try pool.playerWithdraw(amt) {} catch {} }
            else if (kind == 2) { vm.prank(op); try pool.settle(p, int256(amt)) {} catch {} }
            else { vm.prank(op); try pool.settle(p, -int256(amt)) {} catch {} }
            // invariant: liabilities always fully backed
            assertLe(pool.playerLiabilities(), pool.gmeBalance());
        }
    }

    function test_settleBatchAtomicAndBounded() public {
        _addLiq(lp1, 100 * U);
        vm.prank(alice); pool.playerDeposit(20 * U);
        vm.prank(bob);   pool.playerDeposit(20 * U);

        // order losses first so wins are funded within the batch
        address[] memory ps = new address[](2);
        int256[] memory ds = new int256[](2);
        ps[0] = alice; ds[0] = -10 * int256(U);   // alice loses 10 -> house
        ps[1] = bob;   ds[1] =  10 * int256(U);    // bob wins 10 <- house
        vm.prank(op); pool.settleBatch(ps, ds);
        assertEq(pool.playerBalance(alice), 10 * U);
        assertEq(pool.playerBalance(bob), 30 * U);
        assertEq(pool.playerLiabilities(), 40 * U);
        assertLe(pool.playerLiabilities(), pool.gmeBalance());  // still solvent

        // any entry over the per-round cap reverts the WHOLE batch (atomic)
        ps[1] = bob; ds[1] = 101 * int256(U);
        vm.prank(op); vm.expectRevert(RollaFarmPool.SettleTooLarge.selector);
        pool.settleBatch(ps, ds);
        assertEq(pool.playerBalance(alice), 10 * U);            // unchanged — atomic

        // length mismatch rejected
        int256[] memory d1 = new int256[](1);
        vm.prank(op); vm.expectRevert(RollaFarmPool.LengthMismatch.selector);
        pool.settleBatch(ps, d1);

        // only operator
        vm.prank(alice); vm.expectRevert(RollaFarmPool.NotOperator.selector);
        pool.settleBatch(ps, ds);
    }

}
