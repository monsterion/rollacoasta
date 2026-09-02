# RollaCoasta — Trustless Settlement: Auditor Brief

Concise technical overview of the on-chain settlement system for auditors. Target
chain: Robinhood Chain (mainnet 4663 / testnet 46630). Solidity 0.8.28, `via_ir` OFF.

## 0. What RollaCoasta is

RollaCoasta is a browser-playable **leveraged trading game** on Robinhood Chain.
Each **round**, a price path for an instrument (e.g. `$GUH`) is generated tick-by-tick
by a deterministic engine whose inputs are (a) **order flow** — the net buy/sell
imbalance from players and a market maker — and (b) **committed-seed randomness** — a
regime Markov chain (calm/pump/dump/euphoria), per-tick Gaussian-like noise, and gated
jumps. Players open **leveraged long/short positions** before/at the round; when the
round's price path is finalized, each position's P&L (`side · leverage · collateral ·
(final−init)/init`, clamped to `[−collateral, +winCap·collateral]`) is paid from a
shared **liquidity pool (FarmPool)**. The house edge lives in the engine's calibrated
drift/noise, not in any ability to pick outcomes — which is exactly what the STARK
proof enforces.

## 1. What the settlement system does

The price path is computed off-chain (`src/engine-zk32.js`, fixed-point WAD=2^32) and
its correctness is proven on-chain, so no operator is trusted with the round outcome or
with moving player funds. Players open positions; a proven round's per-player P&L is
settled from the FarmPool.

### FarmPool (the liquidity vault / house)

Two interchangeable implementations of the same model:
- `RollaFarmPoolETH.sol` — native-ETH vault (deployed on testnet).
- `RollaFarmPool.sol` — ERC-20-denominated vault (same model, e.g. a game token).

Model: **LPs** add liquidity for shares valued against `houseEquity` (= vault balance −
player liabilities); **players** hold a withdrawable balance; the **operator** settles
round P&L via `settleBatch(players, deltas)`. The operator is bounded by three things so
a compromised operator key cannot drain the pool arbitrarily: a per-round cap
(`maxSettlePerRound`), `Pausable`, and a hard **solvency invariant** enforced after every
mutation (`playerLiabilities ≤ vault balance`). `ReentrancyGuard` on all value flows;
`Ownable` for admin. The operator is set to `RollaPositions`, so **only proven rounds
move funds**. Unaudited — fund as beta.

The settlement is **trustless**: a round only settles if a **Plonky3 (FRI) STARK
proof** verifies on-chain that the price path was computed correctly by the canonical
engine from **committed inputs** — no operator is trusted with the outcome. Two
settlement tracks are provided (both verified on-chain, both no trusted setup):

- **Optimistic** (`RollaSettlementOptimistic`): the house posts a result + bond; a
  challenge window follows; anyone can `disprove` a wrong result by submitting the
  STARK proof of the correct output, slashing the bond. The heavy verify runs only on
  dispute. Cheap happy path (~95k gas), assumes ≥1 honest watcher.
- **Batch / eager** (`RollaSettlementBatch`): one STARK proof covers N rounds; the
  contract verifies it once and settles all N eagerly (no window, no watcher). Per-round
  on-chain cost ≈ verify/N.

## 2. The ZK proof (what it binds)

The proof is a `p3-uni-stark` STARK over the Goldilocks field (p = 2^64−2^32+1),
degree-2 extension. **Keccak256** is used for the Merkle (MMCS) commitments and the
Fiat-Shamir challenger (native EVM op — Poseidon2 would be gas-prohibitive to verify).
The AIR (`zk/stark/src/round.rs` single round, `batch.rs` N rounds) proves per tick:

- the exact fixed-point price recurrence (flow, noise, factor, price×factor, floor),
- **randomness (noise `g`, jump gates/magnitudes, regime Markov chain) is the Poseidon2
  output of a seed committed BEFORE the round** — closes the "free witness" rigging gap,
- **order flow is bound to `orderLogHash`** (a per-round Poseidon2 sponge over the signed
  imbalances).

Public values: single round `[init, final, seed, roundId, orderLogHash]`; batch
`[batchCommit]` (a boundary Poseidon2 sponge over each round's
`(seed, roundId, init, final, orderLogHash)`). **A rigged round cannot produce a valid
proof** — the house cannot choose noise/regime/order flow after the fact.

## 3. Deployed contracts

**Verifier (game-agnostic, reusable infrastructure):**
- `GoldilocksField.sol` — base field F_p + extension F_p² arithmetic (addmod/mulmod).
- `KeccakTranscript.sol` — Fiat-Shamir challenger (matches p3 byte-for-byte).
- `MerkleVerifier.sol` — keccak MMCS opening verification.
- `FriFolding.sol`, `FriVerifier.sol`, `FriDeep.sol` — FRI fold + per-query loop + DEEP
  reduced openings.
- `ConstraintEval.sol` — Lagrange selectors, constraint folding, quotient recomposition.
- `StarkProofCodec.sol` — parses the calldata proof; **range-checks every field element
  `< p`** (rejects non-canonical).
- `StarkVerifier.sol` — `verifyOpenings` (transcript → FRI → multi-matrix openings),
  AIR-agnostic. **`public`** (deployed library) to stay under EIP-170.
- `Poseidon2Goldilocks.sol` — on-chain Poseidon2 permutation (matches p3 byte-for-byte;
  verified against a from-scratch reference). Used by the batch track to recompute
  `batchCommit`.

**Per-AIR (auto-generated by `zk/stark/src/bin/codegen_air.rs`):**
- `RoundConstraints.sol` / `BatchConstraints.sol` — the AIR's constraints as ~176/228
  split library contracts (each ≤ EIP-170) + sub-dispatchers. Emitted as compact SSA
  over a flat `uint256[]` (~16 B/node). **Differential-tested to reproduce p3's folded
  constraint value exactly.**
- `RoundStarkVerifier.sol` / `BatchStarkVerifier.sol` — glue: `verifyOpenings` + fold
  constraints + `foldedConstraints·invVanishing == recomposedQuotient`.
- `RoundVerifierEntry.sol` / `BatchVerifierEntry.sol` — deployable entry: parse → verify →
  return bound public values.

**Settlement + funds:**
- `RollaSettlementOptimistic.sol` — post/disprove/finalize state machine; bond slashing.
- `RollaSettlementBatch.sol` — verify one N-round proof; recompute `batchCommit` from the
  N posted tuples via `Poseidon2Goldilocks`; settle all N. Cheap binding checks (seed
  commit, order-flow record) run BEFORE the expensive verify.
- `RollaPositions.sol` — position→P&L layer; the FarmPool's `operator`. Computes leveraged
  P&L from the PROVEN `(init, final)`, clamps to `[−collateral, +winCap·collateral]`.
- `RollaFarmPoolETH.sol` — native-ETH liquidity vault; LP shares vs house equity; player
  balances; `settleBatch` bounded by `maxSettlePerRound` + a solvency invariant
  (player liabilities always ≤ ETH held). Pausable, ReentrancyGuard, Ownable.

## 4. Trust model & assumptions

- **No trusted setup** (transparent FRI STARK). A verifier bug = accepting an invalid
  proof = drainable pool → the verifier and codec are the primary audit surface.
- **Seed commit-reveal**: `seedCommit` must be posted before the round; the proof binds
  the revealed seed. **Order flow**: `orderLogHash` recorded on-chain from the order
  pipeline; the proof binds it. The settlement contract checks both.
- **Optimistic** additionally assumes ≥1 honest watcher within the challenge window, and
  `minBond` > dispute gas cost so disproving is profitable.
- **Operator/keys** (off-chain, env-var at runtime, never in repo): deployer/owner,
  validator (gate daemon), market maker. The FarmPool `operator` is `RollaPositions`
  (only proven results move funds). Real-money custody is gated behind `REAL_MONEY=true`.

## 5. Known limitations / audit focus

- Contracts are **UNAUDITED** — fund as beta. The per-round `maxSettlePerRound` cap +
  pool solvency invariant bound worst-case loss.
- `RollaPositions` v0: positions enter at the round's `init` price (round-start entry);
  linear P&L; no mid-round entry / funding / partial fills yet.
- FRI `num_queries` is the soundness parameter — production proofs must use a secure count
  (~80–100 for ~100-bit, fewer at higher blowup); the differential-test proofs use 2
  (INSECURE) for speed. The `vkey`/AIR pins exactly which program is accepted.
- The verifier is large: ~180 (optimistic) / ~240 (batch) deployed contracts due to the
  EIP-170 split of the constraint evaluator.

## 6. Testing & pre-audit battle-testing

- **86 differential/unit tests** — every Solidity verifier component reproduces p3's
  output exactly (field, transcript, Merkle, FRI, DEEP, constraint fold/quotient),
  and full round + batch proofs verify end-to-end on-chain.
- **Stateful invariant fuzzing (custody layer)** — `test/forge/FarmPoolInvariant.t.sol`:
  25,000 random adversarial sequences of LP/player/operator actions (500 runs × 50
  depth), 0 reverts. Holds: **solvency** (`playerLiabilities ≤ vault balance`),
  liabilities = Σ player balances, share consistency, no free value.
- **P&L clamp fuzzing** — `test/forge/PositionsPnlFuzz.t.sol`: 5,000 fuzzed
  (side, leverage, collateral, init, final) across the full input space (incl. extreme
  prices) — every settlement stays within `[−collateral, +winCap·collateral]`.
- **Live on testnet 46630** — both settlement stacks deployed; the round verifier and
  the batch verifier each verified a real proof on-chain (returning the exact bound
  public values / batchCommit), and a full optimistic round settled real funds.

## 7. How to reproduce a proof

`zk/stark` (Rust, Plonky3 0.6.3): `cargo run --release --bin generate_round_stark`
(single round) or `generate_batch_stark` (N rounds) emits the serialized proof
(`PROOFBYTES`) consumed by the Solidity verifier. Every Solidity component is
differential-tested against p3 output (86 forge tests).
