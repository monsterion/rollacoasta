// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {Test} from "forge-std/Test.sol";
import {RollaInstruments} from "../../contracts/RollaInstruments.sol";
import {IERC721Receiver} from "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";

/// A payee that rejects ETH — proves a griefing sire owner only harms itself.
contract RejectsEth {
    receive() external payable { revert("no"); }
    function onERC721Received(address, address, uint256, bytes calldata) external pure returns (bytes4) {
        return IERC721Receiver.onERC721Received.selector;
    }
}

/// Malicious receiver: on mint it tries to re-enter breed(). The
/// ReentrancyGuard must make the outer call revert.
contract ReentrantBreeder is IERC721Receiver {
    RollaInstruments public nft;
    bool public armed;
    constructor(RollaInstruments nft_) { nft = nft_; }
    function arm() external { armed = true; }
    function go(uint256 a, uint256 b) external payable {
        nft.breed{value: msg.value}(a, b);
    }
    function onERC721Received(address, address, uint256, bytes calldata) external returns (bytes4) {
        if (armed) {
            armed = false;
            nft.breed{value: 0.01 ether}(0, 1); // re-entry attempt
        }
        return IERC721Receiver.onERC721Received.selector;
    }
}

contract RollaInstrumentsTest is Test {
    RollaInstruments nft;
    address vault = address(0x7A017);
    address validator = address(0xFA1D);
    address alice = address(0xA11CE);
    uint256 constant FEE = 0.01 ether;

    // gene table mirror for the fuzz envelope check
    uint256[16] OFFSET = [uint256(0),12,24,34,44,54,64,76,96,108,120,132,144,156,168,180];
    uint256[16] WIDTH  = [uint256(12),12,10,10,10,10,12,20,12,12,12,12,12,12,12,12];
    uint256[16] MIN    = [uint256(100),1000,20,20,5,5,50,200,1648,20,1648,20,1648,20,1648,20];
    uint256[16] MAX    = [uint256(2000),2500,500,500,400,400,1500,100000,2448,900,2448,900,2448,900,2448,900];

    function setUp() public {
        vm.prank(alice);
        nft = new RollaInstruments(vault, validator, FEE);
        vm.deal(alice, 100 ether);
    }

    function _field(uint256 genome, uint256 i) internal view returns (uint256) {
        return (genome >> OFFSET[i]) & ((1 << WIDTH[i]) - 1);
    }
    function _assertEnvelope(uint256 genome) internal view {
        for (uint256 i = 0; i < 16; i++) {
            uint256 v = _field(genome, i);
            assertGe(v, MIN[i], "gene below envelope");
            assertLe(v, MAX[i], "gene above envelope");
        }
    }

    function test_genesisActiveAndOwned() public view {
        assertEq(nft.ownerOf(0), alice);
        (uint256 genome,,,,,, uint8 status) = nft.getInstrument(0);
        assertEq(genome, nft.GENESIS_GENOME());
        assertEq(status, 1); // Active
    }

    function _mintSibling() internal returns (uint256 id) {
        // a legal sibling genome: same as genesis with a tweaked lambda
        uint256 g = nft.GENESIS_GENOME();
        // clear lambda field (bits 0..11) and set 900
        g = (g & ~uint256(0xFFF)) | 900;
        vm.prank(alice);
        id = nft.mintGen0(g);
    }

    function test_breedRoutesFullFeeToVault() public {
        _mintSibling();
        uint256 before = vault.balance;
        vm.prank(alice);
        nft.breed{value: FEE}(0, 1);
        assertEq(vault.balance - before, FEE, "vault must receive 100% of the fee");
    }

    function test_childIsEggUntilValidated() public {
        _mintSibling();
        vm.prank(alice);
        uint256 child = nft.breed{value: FEE}(0, 1);
        (,,,,,, uint8 s0) = nft.getInstrument(child);
        assertEq(s0, 0); // Egg

        vm.prank(validator);
        nft.activate(child, true);
        (,,,,,, uint8 s1) = nft.getInstrument(child);
        assertEq(s1, 1); // Active
    }

    function test_onlyValidatorActivates() public {
        _mintSibling();
        vm.prank(alice);
        uint256 child = nft.breed{value: FEE}(0, 1);
        vm.prank(alice);               // even the owner cannot bypass the gate
        vm.expectRevert();
        nft.activate(child, true);
    }

    function test_pauseHaltsBreedingOnly() public {
        _mintSibling();
        vm.prank(alice);
        nft.pause();
        vm.prank(alice);
        vm.expectRevert();
        nft.breed{value: FEE}(0, 1);

        // transfers still work while paused — no user asset is frozen
        vm.prank(alice);
        nft.transferFrom(alice, address(0xBEEF), 1);
        assertEq(nft.ownerOf(1), address(0xBEEF));

        vm.prank(alice);
        nft.unpause();
    }

    function test_reentrancyGuardBlocksNestedBreed() public {
        _mintSibling();
        ReentrantBreeder atk = new ReentrantBreeder(nft);
        // give the attacker two active instruments to breed
        vm.startPrank(alice);
        nft.transferFrom(alice, address(atk), 0);
        nft.transferFrom(alice, address(atk), 1);
        vm.stopPrank();
        vm.deal(address(atk), 1 ether);

        atk.arm();
        vm.expectRevert(); // nested breed trips ReentrancyGuard, whole tx reverts
        atk.go{value: FEE}(0, 1);
    }

    function test_breedWithUnlistedSireReverts() public {
        _mintSibling();
        // token 1 is not listed at stud (siringPrice == 0)
        vm.prank(alice);
        vm.expectRevert();
        nft.breedWithSire{value: FEE}(0, 1);
    }

    function test_studPaysOwnerP2pAndVaultGetsFee() public {
        _mintSibling();                       // token 1, owned by alice
        // move the sire to Bob and list it at stud
        address bob = address(0xB0B);
        vm.prank(alice);
        nft.transferFrom(alice, bob, 1);
        uint256 price = 0.1 ether;
        vm.prank(bob);
        nft.setSiringPrice(1, price);

        uint256 bobBefore = bob.balance;
        uint256 vaultBefore = vault.balance;
        vm.prank(alice);                      // alice breeds her matron (0) with Bob's sire
        nft.breedWithSire{value: price + FEE}(0, 1);
        assertEq(bob.balance - bobBefore, price, "sire owner paid peer-to-peer");
        assertEq(vault.balance - vaultBefore, FEE, "protocol fee 100% to vault");
    }

    function test_selfBreedRejected() public {
        vm.prank(alice);
        vm.expectRevert();
        nft.breed{value: FEE}(0, 0);
    }

    function test_cooldownBlocksImmediateRebreed() public {
        _mintSibling();
        vm.startPrank(alice);
        nft.breed{value: FEE}(0, 1);
        vm.expectRevert();             // parents on cooldown
        nft.breed{value: FEE}(0, 1);
        vm.stopPrank();
    }

    /// The core safety property: no reachable breed, under any block
    /// randomness, produces a child gene outside the envelope.
    function testFuzz_breedingNeverEscapesEnvelope(uint256 seed) public {
        _mintSibling();
        uint256 a = 0;
        uint256 b = 1;
        vm.startPrank(alice);
        for (uint256 gen = 0; gen < 6; gen++) {
            vm.prevrandao(bytes32(uint256(keccak256(abi.encode(seed, gen)))));
            uint256 child = nft.breed{value: FEE}(a, b);
            (uint256 genome,,,,,,) = nft.getInstrument(child);
            _assertEnvelope(genome);
            vm.stopPrank();
            vm.prank(validator);
            nft.activate(child, true);
            vm.startPrank(alice);
            // advance past the doubling cooldown, then breed child with a
            b = child;
            vm.warp(block.timestamp + 30 days);
        }
        vm.stopPrank();
    }

    /// Envelope holds even from parents sitting at the extreme legal edges.
    function testFuzz_extremeParentsStayBounded(uint256 seed) public {
        // build two genomes pinned to MIN and MAX respectively
        uint256 lo;
        uint256 hi;
        for (uint256 i = 0; i < 16; i++) {
            lo |= (MIN[i] << OFFSET[i]);
            hi |= (MAX[i] << OFFSET[i]);
        }
        vm.startPrank(alice);
        uint256 idLo = nft.mintGen0(lo);
        uint256 idHi = nft.mintGen0(hi);
        vm.prevrandao(bytes32(seed));
        uint256 child = nft.breed{value: FEE}(idLo, idHi);
        vm.stopPrank();
        (uint256 genome,,,,,,) = nft.getInstrument(child);
        _assertEnvelope(genome);
    }
}
