// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";
import {Base64} from "@openzeppelin/contracts/utils/Base64.sol";

/**
 * RollaInstruments — tradable market instruments as breedable NFTs.
 *
 * Each token's genome is the full parameter set of the Ouroboros price
 * engine, packed into one uint256. Breed two instruments and the child
 * inherits a blended, mutated parameter set: a genuinely new market.
 * The homage is CryptoKitties; the difference is that these genes are
 * coefficients in a live price equation, not cosmetics.
 *
 * Token #0 is $GUH, the genesis genome every other instrument descends
 * from. Children are named GUH-<id>: one universal bloodline.
 *
 * GENE LAYOUT — mirrored exactly in src/genome.js. Do not change one
 * without the other; test/contracts.mjs asserts parity.
 *
 * Lifecycle: breed() mints an Egg. An off-chain validator replays the
 * genome through thousands of headless rounds (an off-chain simulation gate) and
 * calls activate(id, ok). Only Active instruments can list or breed.
 * The envelope clamp below makes rejections rare; the gate exists for
 * dynamics the static bounds cannot foresee.
 *
 * FEE DOCTRINE: 100% of protocol breeding fees go to the vault, which
 * buys equities for $ROLLA holders — same rule as every other fee in
 * the protocol. Siring payments are peer-to-peer income for the sire's
 * owner and never touch the protocol's fee line.
 *
 * RANDOMNESS CAVEAT: breeding entropy derives from prevrandao and chain
 * state, which block producers can influence at the margin. That is an
 * accepted trade here because the envelope clamps every gene to a sane
 * range and the simulation gate bounds outcomes — a manipulated roll
 * yields a slightly different playable market, not a jackpot.
 */
contract RollaInstruments is ERC721, Ownable, Pausable, ReentrancyGuard {
    using Strings for uint256;

    enum Status { Egg, Active, Rejected }

    struct Instrument {
        uint256 genome;
        uint32 matronId;
        uint32 sireId;
        uint16 generation;
        uint64 cooldownEnd;
        uint16 breedCount;
        Status status;
    }

    /// $GUH — GUH-PERP-30, Table 4.1. Computed by src/genome.js.
    uint256 public constant GENESIS_GENOME =
        0x00000000000000001548960dc7970b485a05a8100057812c1b83241064578352;

    uint256 public constant GEN0_CAP = 16;
    uint64 public constant COOLDOWN_BASE = 5 minutes;
    uint256 private constant GENE_COUNT = 16;
    uint256 private constant GENERATION_OFFSET = 192;

    mapping(uint256 => Instrument) public instruments;
    mapping(uint256 => uint256) public siringPrice; // 0 = not listed

    uint256 public nextId;
    uint256 public gen0Minted;
    uint256 public breedFee;
    address public vault;
    address public validator;
    uint256 private entropyNonce;

    event Bred(uint256 indexed childId, uint256 indexed matronId, uint256 indexed sireId, uint256 genome);
    event Validated(uint256 indexed tokenId, bool ok);
    event SiringListed(uint256 indexed tokenId, uint256 price);
    event Gen0Minted(uint256 indexed tokenId, uint256 genome);
    event BreedFeeSet(uint256 fee);
    event VaultSet(address vault);
    event ValidatorSet(address validator);

    error NotAuthorised();
    error NotActive(uint256 tokenId);
    error OnCooldown(uint256 tokenId);
    error SelfBreed();
    error FeeTooLow();
    error NotListed(uint256 tokenId);
    error EnvelopeViolation(uint256 geneIndex);
    error Gen0CapReached();
    error NotEgg(uint256 tokenId);
    error TransferFailed();

    constructor(address vault_, address validator_, uint256 breedFee_)
        ERC721("RollaCoasta Instruments", "GUH")
        Ownable(msg.sender)
    {
        vault = vault_;
        validator = validator_;
        breedFee = breedFee_;

        // Token #0: the universal ancestor. Active from birth — its
        // parameters are the published, already-live GUH-PERP-30 set.
        // State written before _safeMint so the ERC721 receiver callback
        // can never observe a half-initialised instrument (CEI).
        uint256 id = nextId++;
        instruments[id] = Instrument({
            genome: GENESIS_GENOME,
            matronId: 0,
            sireId: 0,
            generation: 0,
            cooldownEnd: 0,
            breedCount: 0,
            status: Status.Active
        });
        _safeMint(msg.sender, id);
    }

    /* ------------------------------------------------------------------ */
    /*  Gene table — offset, width, min, max per gene. Mirrors GENES in   */
    /*  src/genome.js, same order.                                        */
    /* ------------------------------------------------------------------ */

    function _gene(uint256 i)
        private
        pure
        returns (uint256 offset, uint256 width, uint256 min, uint256 max)
    {
        if (i == 0)  return (0,   12, 100,  2000);   // lambda        1e3
        if (i == 1)  return (12,  12, 1000, 2500);   // expo          1e3
        if (i == 2)  return (24,  10, 20,   500);    // kUp           1e2
        if (i == 3)  return (34,  10, 20,   500);    // kDn           1e2
        if (i == 4)  return (44,  10, 5,    400);    // rateUp        1e3
        if (i == 5)  return (54,  10, 5,    400);    // rateDn        1e3
        if (i == 6)  return (64,  12, 50,   1500);   // phi           1e3
        if (i == 7)  return (76,  20, 200,  100000); // poolDepth     1
        if (i == 8)  return (96,  12, 1648, 2448);   // muCalm        1e4 +2048
        if (i == 9)  return (108, 12, 20,   900);    // sigmaCalm     1e4
        if (i == 10) return (120, 12, 1648, 2448);   // muPump
        if (i == 11) return (132, 12, 20,   900);    // sigmaPump
        if (i == 12) return (144, 12, 1648, 2448);   // muDump
        if (i == 13) return (156, 12, 20,   900);    // sigmaDump
        if (i == 14) return (168, 12, 1648, 2448);   // muEuphoria
        return (180, 12, 20, 900);                   // sigmaEuphoria
    }

    function _withinEnvelope(uint256 genome) private pure returns (bool, uint256) {
        for (uint256 i = 0; i < GENE_COUNT; i++) {
            (uint256 offset, uint256 width, uint256 min, uint256 max) = _gene(i);
            uint256 value = (genome >> offset) & ((1 << width) - 1);
            if (value < min || value > max) return (false, i);
        }
        return (true, 0);
    }

    /* ------------------------------------------------------------------ */
    /*  Gen 0 — cold start. The bloodline needs at least two ancestors    */
    /*  before breeding can exist. Capped, owner-only, envelope-checked,  */
    /*  and expected to be simulation-vetted off-chain before minting.    */
    /* ------------------------------------------------------------------ */

    function mintGen0(uint256 genome) external onlyOwner returns (uint256 id) {
        if (gen0Minted >= GEN0_CAP) revert Gen0CapReached();
        (bool ok, uint256 badGene) = _withinEnvelope(genome);
        if (!ok) revert EnvelopeViolation(badGene);

        gen0Minted += 1;
        id = nextId++;
        instruments[id] = Instrument({
            genome: genome & ((1 << GENERATION_OFFSET) - 1), // force generation 0
            matronId: 0,
            sireId: 0,
            generation: 0,
            cooldownEnd: 0,
            breedCount: 0,
            status: Status.Active
        });
        _safeMint(msg.sender, id); // after state write (CEI)
        emit Gen0Minted(id, instruments[id].genome);
    }

    /* ------------------------------------------------------------------ */
    /*  Breeding                                                          */
    /* ------------------------------------------------------------------ */

    /// Breed two instruments you control. Entire fee goes to the vault.
    function breed(uint256 matronId, uint256 sireId)
        external
        payable
        nonReentrant
        whenNotPaused
        returns (uint256 childId)
    {
        if (!_isAuthorized(_ownerOf(matronId), msg.sender, matronId)) revert NotAuthorised();
        if (!_isAuthorized(_ownerOf(sireId), msg.sender, sireId)) revert NotAuthorised();
        if (msg.value < breedFee) revert FeeTooLow();

        childId = _breed(matronId, sireId);
        _payVault(msg.value);
    }

    /// List an instrument at stud. Anyone may breed with it for `price`.
    function setSiringPrice(uint256 tokenId, uint256 price) external {
        if (!_isAuthorized(_ownerOf(tokenId), msg.sender, tokenId)) revert NotAuthorised();
        siringPrice[tokenId] = price;
        emit SiringListed(tokenId, price);
    }

    /// Breed your matron with a listed sire. The siring price is p2p
    /// income for the sire's owner; only the protocol fee touches the vault.
    function breedWithSire(uint256 matronId, uint256 sireId)
        external
        payable
        nonReentrant
        whenNotPaused
        returns (uint256 childId)
    {
        if (!_isAuthorized(_ownerOf(matronId), msg.sender, matronId)) revert NotAuthorised();
        uint256 price = siringPrice[sireId];
        if (price == 0) revert NotListed(sireId);
        if (msg.value < price + breedFee) revert FeeTooLow();

        // Cache the payee before the mint: _safeMint calls back into the
        // breeder, and reading state after an external call is how CEI
        // bugs start, even where this particular read is stable.
        address sireOwner = _ownerOf(sireId);
        childId = _breed(matronId, sireId);

        (bool ok, ) = sireOwner.call{value: price}("");
        if (!ok) revert TransferFailed();
        _payVault(msg.value - price);
    }

    function _breed(uint256 matronId, uint256 sireId) private returns (uint256 childId) {
        if (matronId == sireId) revert SelfBreed();
        Instrument storage matron = instruments[matronId];
        Instrument storage sire = instruments[sireId];
        if (matron.status != Status.Active) revert NotActive(matronId);
        if (sire.status != Status.Active) revert NotActive(sireId);
        if (block.timestamp < matron.cooldownEnd) revert OnCooldown(matronId);
        if (block.timestamp < sire.cooldownEnd) revert OnCooldown(sireId);

        bytes32 parentHash = block.number > 0 ? blockhash(block.number - 1) : bytes32(0);
        uint256 entropy = uint256(keccak256(abi.encodePacked(
            block.prevrandao, parentHash,
            matron.genome, sire.genome, entropyNonce++, msg.sender
        )));

        uint16 generation = (matron.generation >= sire.generation ? matron.generation : sire.generation);
        if (generation < type(uint16).max) generation += 1;

        uint256 childGenome = _mixGenes(matron.genome, sire.genome, entropy)
            | (uint256(generation) << GENERATION_OFFSET);

        _bumpCooldown(matron);
        _bumpCooldown(sire);

        childId = nextId++;
        instruments[childId] = Instrument({
            genome: childGenome,
            matronId: uint32(matronId),
            sireId: uint32(sireId),
            generation: generation,
            cooldownEnd: 0,
            breedCount: 0,
            status: Status.Egg
        });
        _safeMint(msg.sender, childId); // after state write (CEI)
        emit Bred(childId, matronId, sireId, childGenome);
    }

    /**
     * Per gene: inherit from either parent (coin flip), then mutate with
     * probability 20/256 by 1–4 steps of range/32, clamped to the
     * envelope. Fresh entropy per gene via keccak(entropy, i).
     */
    function _mixGenes(uint256 mGenome, uint256 sGenome, uint256 entropy)
        private
        pure
        returns (uint256 child)
    {
        for (uint256 i = 0; i < GENE_COUNT; i++) {
            (uint256 offset, uint256 width, uint256 min, uint256 max) = _gene(i);
            uint256 e = uint256(keccak256(abi.encodePacked(entropy, i)));
            uint256 fieldMask = (1 << width) - 1;

            uint256 value = ((e & 1) == 0 ? mGenome : sGenome) >> offset & fieldMask;

            if (((e >> 1) & 0xFF) < 20) {
                uint256 step = (max - min) / 32;
                if (step == 0) step = 1;
                uint256 delta = step * (1 + ((e >> 9) & 3));
                if (((e >> 11) & 1) == 0) {
                    value = value + delta > max ? max : value + delta;
                } else {
                    value = value < min + delta ? min : value - delta;
                }
            }
            // Belt and braces: clamp even un-mutated genes, so a gen-0
            // genome at the old envelope edge can never escape a
            // tightened future envelope through inheritance.
            if (value < min) value = min;
            if (value > max) value = max;

            child |= value << offset;
        }
    }

    function _bumpCooldown(Instrument storage inst) private {
        uint256 shift = inst.breedCount > 12 ? 12 : inst.breedCount;
        inst.cooldownEnd = uint64(block.timestamp + (uint256(COOLDOWN_BASE) << shift));
        inst.breedCount += 1;
    }

    function _payVault(uint256 amount) private {
        if (amount == 0) return;
        (bool ok, ) = vault.call{value: amount}("");
        if (!ok) revert TransferFailed();
    }

    /* ------------------------------------------------------------------ */
    /*  Validation gate                                                   */
    /* ------------------------------------------------------------------ */

    function activate(uint256 tokenId, bool ok) external {
        if (msg.sender != validator) revert NotAuthorised();
        Instrument storage inst = instruments[tokenId];
        if (inst.status != Status.Egg) revert NotEgg(tokenId);
        inst.status = ok ? Status.Active : Status.Rejected;
        emit Validated(tokenId, ok);
    }

    /* ------------------------------------------------------------------ */
    /*  Views                                                             */
    /* ------------------------------------------------------------------ */

    function getInstrument(uint256 tokenId)
        external
        view
        returns (
            uint256 genome, uint32 matronId, uint32 sireId,
            uint16 generation, uint64 cooldownEnd, uint16 breedCount, uint8 status
        )
    {
        _requireOwned(tokenId);
        Instrument storage inst = instruments[tokenId];
        return (
            inst.genome, inst.matronId, inst.sireId,
            inst.generation, inst.cooldownEnd, inst.breedCount, uint8(inst.status)
        );
    }

    function symbolOf(uint256 tokenId) public view returns (string memory) {
        _requireOwned(tokenId);
        return tokenId == 0 ? "GUH" : string.concat("GUH-", tokenId.toString());
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        _requireOwned(tokenId);
        Instrument storage inst = instruments[tokenId];
        string memory statusStr =
            inst.status == Status.Active ? "active" : inst.status == Status.Egg ? "egg" : "rejected";
        bytes memory json = abi.encodePacked(
            '{"name":"', symbolOf(tokenId),
            '","description":"A RollaCoasta market instrument. The genome is the full parameter set of its price engine.",',
            '"attributes":[{"trait_type":"generation","value":', uint256(inst.generation).toString(),
            '},{"trait_type":"status","value":"', statusStr,
            '"},{"trait_type":"genome","value":"', inst.genome.toHexString(32), '"}]}'
        );
        return string.concat("data:application/json;base64,", Base64.encode(json));
    }

    /* ------------------------------------------------------------------ */
    /*  Admin                                                             */
    /* ------------------------------------------------------------------ */

    function setBreedFee(uint256 fee) external onlyOwner { breedFee = fee; emit BreedFeeSet(fee); }
    function setVault(address vault_) external onlyOwner { vault = vault_; emit VaultSet(vault_); }
    function setValidator(address v) external onlyOwner { validator = v; emit ValidatorSet(v); }

    /// Incident switch. Halts new breeding only. It cannot touch existing
    /// tokens, balances, transfers, siring listings or the validator gate —
    /// a paused contract still lets everyone move and trade what they hold.
    function pause() external onlyOwner { _pause(); }
    function unpause() external onlyOwner { _unpause(); }
}
