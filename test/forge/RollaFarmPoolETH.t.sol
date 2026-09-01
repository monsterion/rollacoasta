// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {Test} from "forge-std/Test.sol";
import {RollaFarmPoolETH} from "../../contracts/RollaFarmPoolETH.sol";

contract RollaFarmPoolETHTest is Test {
    RollaFarmPoolETH pool;
    address owner = address(0xA11CE);
    address op = address(0xBEEF);
    address lp1 = address(0x1111);
    address alice = address(0xA1);
    address bob = address(0xB0);
    uint256 constant U = 1e18;

    function setUp() public {
        vm.prank(owner);
        pool = new RollaFarmPoolETH(op, 100 * U);
        vm.deal(lp1, 1000 * U); vm.deal(alice, 1000 * U); vm.deal(bob, 1000 * U);
    }

    function test_lpSharesAndEquity() public {
        vm.prank(lp1); pool.addLiquidity{value: 100 * U}();
        assertEq(pool.shareValue(lp1), 100 * U);
        assertEq(pool.houseEquity(), 100 * U);
    }

    function test_playerDepositBackedAndWithdraw() public {
        vm.prank(alice); pool.playerDeposit{value: 30 * U}();
        assertEq(pool.playerBalance(alice), 30 * U);
        assertEq(pool.houseEquity(), 0);
        vm.prank(alice); pool.playerWithdraw(10 * U);
        assertEq(alice.balance, 1000 * U - 20 * U);
    }

    function test_settleFlowsEth() public {
        vm.prank(lp1); pool.addLiquidity{value: 100 * U}();
        vm.prank(alice); pool.playerDeposit{value: 20 * U}();
        vm.prank(op); pool.settle(alice, -20 * int256(U));   // loss to house
        assertEq(pool.houseEquity(), 120 * U);
        vm.prank(bob); pool.playerDeposit{value: 5 * U}();
        vm.prank(op); pool.settle(bob, 30 * int256(U));      // win from house
        vm.prank(bob); pool.playerWithdraw(35 * U);
        assertEq(bob.balance, 1000 * U - 5 * U + 35 * U);
    }

    function test_settleBatchAtomicBounded() public {
        vm.prank(lp1); pool.addLiquidity{value: 100 * U}();
        vm.prank(alice); pool.playerDeposit{value: 20 * U}();
        vm.prank(bob); pool.playerDeposit{value: 20 * U}();
        address[] memory ps = new address[](2);
        int256[] memory ds = new int256[](2);
        ps[0]=alice; ds[0]=-10*int256(U); ps[1]=bob; ds[1]=10*int256(U);
        vm.prank(op); pool.settleBatch(ps, ds);
        assertEq(pool.playerBalance(bob), 30 * U);
        assertLe(pool.playerLiabilities(), pool.ethBalance());
        ds[1] = 101 * int256(U);
        vm.prank(op); vm.expectRevert(RollaFarmPoolETH.SettleTooLarge.selector);
        pool.settleBatch(ps, ds);
    }

    function testFuzz_solvent(uint256 seed) public {
        vm.prank(lp1); pool.addLiquidity{value: 500 * U}();
        address[2] memory players = [alice, bob];
        for (uint256 i = 0; i < 12; i++) {
            uint256 e = uint256(keccak256(abi.encode(seed, i)));
            address p = players[e % 2];
            uint256 amt = ((e >> 16) % 40 + 1) * U;
            uint256 kind = (e >> 8) % 4;
            if (kind == 0) { vm.prank(p); try pool.playerDeposit{value: amt}() {} catch {} }
            else if (kind == 1) { vm.prank(p); try pool.playerWithdraw(amt) {} catch {} }
            else if (kind == 2) { vm.prank(op); try pool.settle(p, int256(amt)) {} catch {} }
            else { vm.prank(op); try pool.settle(p, -int256(amt)) {} catch {} }
            assertLe(pool.playerLiabilities(), pool.ethBalance());
        }
    }
}
