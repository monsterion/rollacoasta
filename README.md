# RollaInstruments

Breedable market-instrument NFTs. Each token's genome **is** the full
parameter set of a synthetic-market price engine, packed into one
`uint256`. Breed two instruments and the child inherits a blended,
mutated parameter set — a genuinely different market, not a different
picture. The homage is CryptoKitties; the difference is that these genes
are coefficients in a live price equation, not cosmetics.

Token #0 is **$GUH**, the genesis genome every instrument descends from.

This repository is the on-chain contract and the tooling to build, test,
verify and deploy it. The game that trades these instruments is a
separate system.

## How it works

- **Genome** — 16 genes packed LSB-first ([`src/genome.js`](src/genome.js)
  is the canonical codec, mirrored bit-for-bit in the contract). Every
  gene has a hard `[min, max]` envelope enforced on-chain.
- **Breeding** — `breed(matron, sire)` (both owned by the caller) or
  `breedWithSire(matron, sire)` against a listed stud. Each gene is
  inherited from one parent, mutated with ~8% probability by a bounded
  step, and clamped to the envelope. Cooldowns double per breed.
- **Egg → Active** — children mint as **Eggs**. An off-chain validator
  replays the genome through a deterministic simulation gate and calls
  `activate(id, ok)`; only Active instruments can list or breed. Because
  the gate is deterministic, a dishonest activation is detectable by
  replay, and every gene is already envelope-clamped on-chain regardless.
- **Fees** — 100% of the protocol breeding fee goes to the vault. Siring
  prices are peer-to-peer income for the sire's owner and never touch the
  fee line.

## Genome layout

Sixteen coefficients, packed into one word (see [`src/genome.js`](src/genome.js)
for the exact offsets, scales and envelope bounds; the contract's `_gene`
table mirrors them):

| gene | meaning |
| --- | --- |
| `lambda`, `expo` | order-flow impact coefficient and its convexity |
| `kUp`, `kDn`, `rateUp`, `rateDn` | jump magnitudes and arrival rates |
| `phi` | funding drag |
| `poolDepth` | the impact denominator |
| `mu*/sigma*` × 4 regimes | drift and volatility per market regime |

Token #0's genome decodes to the published GUH-PERP-30 set; the test
suite asserts that byte-for-byte.

## Build & test

Two independent, offline test paths:

```
# Foundry — fuzzing + a live reentrancy attacker (canonical)
forge install foundry-rs/forge-std   # first time only
npm install                          # OpenZeppelin + tooling
forge test

# Node — codec parity with the on-chain genome + 5000-genome fuzz
npm run test:genome
```

`forge test` covers the full lifecycle: genome parity, breeding, envelope
enforcement (incl. two 256-run fuzz properties proving no bred gene ever
escapes its bounds under arbitrary `prevrandao`), gate authority
(the owner cannot bypass the validator), cooldowns, the stud market, and
100%-to-vault fee routing, plus a `ReentrantBreeder` contract that proves
the reentrancy guard reverts a nested breed.

## Deploy

```
npm run deploy -- --dry      # gas estimate against the live chain, no key
npm run deploy               # needs DEPLOYER_KEY, VAULT_ADDR, VALIDATOR_ADDR
```

The deploy script re-reads the genesis genome from the freshly deployed
contract and asserts it matches the local codec byte-for-byte, then
writes `deployments/<chainId>.json`.

## Security

See [`SECURITY.md`](SECURITY.md). In short: reviewed and tested by the
authors only, **unaudited**, with the owner/validator trust assumptions
and the breeding-randomness caveat documented plainly. Do not put real
value on it before an independent audit.

## License

MIT — see [`LICENSE`](LICENSE).
