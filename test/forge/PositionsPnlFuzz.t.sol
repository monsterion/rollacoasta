// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "forge-std/Test.sol";
import "../../contracts/RollaPositions.sol";
import "../../contracts/RollaFarmPoolETH.sol";

/**
 * Fuzz the real positions -> pool settlement path across the full input space
 * (side, leverage, collateral, init/final price). Proves the P&L a settlement can
 * ever move for a player is bounded to [-collateral, +winCap*collateral] — no
 * settlement, for any proven price, can pay out of bounds or exceed collateral loss.
 */
contract PositionsPnlFuzzTest is Test {
    RollaFarmPoolETH pool;
    RollaPositions pos;
    address player = address(0xA11CE);

    function setUp() public {
        pool = new RollaFarmPoolETH(address(this), 1000 ether);
        pos = new RollaPositions(address(pool));
        pool.setOperator(address(pos));
        pos.setSettlement(address(this)); // this test acts as settlement
        // deep house liquidity + a large player float so settle never reverts on
        // funds; we are testing the CLAMP, not the pool's funding guards.
        pool.addLiquidity{value: 5000 ether}();
        vm.deal(player, 2000 ether);
        vm.prank(player);
        pool.playerDeposit{value: 1000 ether}();
    }

    function testFuzz_pnlAlwaysClamped(uint8 sideRaw, uint32 lev, uint128 coll, uint64 init, uint64 fin)
        public
    {
        uint8 side = (sideRaw % 2) + 1; // 1 or 2
        lev = uint32(bound(lev, 1, pos.maxLeverage()));
        coll = uint128(bound(coll, 1, 10 ether));
        init = uint64(bound(init, 1, type(uint64).max)); // no divide-by-zero
        fin = uint64(bound(fin, 0, type(uint64).max));

        uint256 roundId = 1;
        pos.openRound(roundId);
        vm.prank(player);
        pos.openPosition(roundId, side, lev, coll);

        uint256 balBefore = pool.playerBalance(player);
        pos.settle(roundId, init, fin);
        int256 moved = int256(pool.playerBalance(player)) - int256(balBefore);

        // the settled P&L is clamped: never a loss beyond collateral, never a win
        // beyond winCap * collateral.
        int256 floor = -int256(uint256(coll));
        int256 cap = int256(pos.winCapNumerator()) * int256(uint256(coll));
        assertGe(moved, floor, "loss exceeded collateral (liquidation clamp broken)");
        assertLe(moved, cap, "win exceeded winCap*collateral (cap broken)");
    }
}
