# Security

This document is honest about what has and has not been done. Read it
before trusting the contract with funds.

## Status

**Unaudited.** `contracts/RollaInstruments.sol` has been reviewed and
tested by its authors only. Do not deploy to mainnet with real value
until an independent audit is complete.

## What has been done

- **Checks-effects-interactions**: every mint writes the instrument
  record *before* `_safeMint`, so the ERC-721 receiver callback can never
  observe a half-initialised token or re-enter into inconsistent state.
- **Reentrancy**: `breed` and `breedWithSire` are `nonReentrant`.
  `test/forge` includes a live attacker contract (`ReentrantBreeder`)
  that re-enters `breed` from `onERC721Received`; the guard makes the
  whole transaction revert.
- **Fuzzing** (Foundry, 256 runs each):
  - `testFuzz_breedingNeverEscapesEnvelope` — across arbitrary
    `prevrandao`, no bred gene ever leaves its `[min,max]` envelope,
    through six generations.
  - `testFuzz_extremeParentsStayBounded` — even parents pinned to the
    exact envelope edges produce in-bounds children.
- **Access control** is tested as a matrix: only the validator can
  activate (not even the owner), only the owner can mint gen-0 / set the
  fee / pause, siring is authorised per-token.
- **Value routing** is asserted: 100% of the protocol breeding fee
  reaches the vault; the siring price is paid peer-to-peer to the sire
  owner and never touches the fee line.
- **Incident pause** halts *new breeding only*. It cannot freeze, seize,
  or block transfer of any existing token or balance — a paused contract
  still lets everyone move what they hold. Tested.
- **Genome parity**: the on-chain genesis genome is asserted to decode to
  exactly the published GUH-PERP-30 parameter set (`npm run test:genome`).

## Known trust assumptions — stated, not hidden

- **Owner powers**: the owner can set the breeding fee, set the vault and
  validator addresses, mint up to `GEN0_CAP` gen-0 ancestors, and pause
  breeding. The owner cannot mint arbitrary generations, cannot bypass
  the validation gate, cannot move or burn anyone's tokens, and cannot
  touch the vault's funds. For a public launch, move ownership to a
  multisig or timelock.
- **Validator trust**: the validator decides which Eggs become Active. A
  malicious validator can reject good instruments or activate bad ones.
  This is bounded two ways: the simulation gate is deterministic and
  reproducible, so a dishonest activation is publicly detectable by
  replay; and every gene is already envelope-clamped on-chain, so even a
  rubber-stamp validator cannot admit an out-of-bounds genome.
- **Breeding randomness** derives from `block.prevrandao` and chain
  state, which block producers can influence at the margin. Accepted
  because the envelope clamps every gene and the gate bounds dynamics: a
  manipulated roll yields a slightly different *playable* market, not a
  jackpot. Do not build anything that pays out on rarity alone.
- **Vault must accept ETH**: fees are pushed with `.call`. Point the vault
  at an EOA or a contract with a `receive()`; a reverting vault makes
  breeding revert (fail-safe, not fund-loss).

## Reporting

Found something? Open a private security advisory on this repository.
Please do not open a public issue for an exploitable finding.
