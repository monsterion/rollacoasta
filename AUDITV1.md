RollaCoasta - Trustless Settlement - Auditor Package

Repo (contracts, tests, AUDIT.md, DEPLOYMENTS.md, benchmarks):
github.com/monsterion/rollacoasta
Live on Robinhood testnet, chainId 46630.

WHAT IT IS
RollaCoasta is a browser leveraged-trading game. Each round, a deterministic engine generates an instrument's price path from order flow plus committed-seed randomness (a regime Markov chain, per-tick noise, gated jumps). Players open leveraged long/short positions, and a settled round pays P and L from a liquidity pool (FarmPool). Correctness is enforced on-chain by a transparent Plonky3 FRI Goldilocks STARK, with no trusted setup. It proves the price path was computed correctly and that all randomness derives from a pre-committed seed (Poseidon2) and order flow is bound to orderLogHash. A rigged round cannot produce a valid proof.

FARMPOOL (liquidity vault, the house)
LPs add liquidity for shares valued against house equity. Players hold withdrawable balances. The operator (RollaPositions) settles P and L. A compromised operator key cannot drain it: bounded by a per-round cap, Pausable, and a hard solvency invariant (player liabilities always less than or equal to vault balance) enforced after every mutation, plus reentrancy guard and ownable. Only proven rounds move funds. Two versions: RollaFarmPoolETH (native ETH, deployed) and RollaFarmPool (ERC-20).

TWO SETTLEMENT PATHS (both live, both verified on-chain with real proofs)
- Optimistic: post result plus bond, on-chain disprove within a window slashes a wrong result.
- Eager batch: one proof for N rounds, Poseidon2 boundary-sponge recompute, no watcher needed.

DEPLOYED CONTRACTS (Robinhood testnet 46630)

Verification (shared):
- ProofRegistry (chunked large-proof delivery): 0xa8318B3F05A5289A0c52139fe67E92E499f2D97b
- RoundVerifierEntry (optimistic verifier, links ~180 constraint libs): 0x191aEAA4D097fe778aD274217102305c09DdB4C2
- BatchVerifierEntry (batch verifier, links ~240 constraint libs): 0x8b1EF83dbd4608423bDb4EbF54D897147413757E

Optimistic stack (registry-wired):
- RollaSettlementOptimistic: 0xe2Ef21156B39af8df3C74065140fbEc0251Aa27D
- RollaPositions: 0xbb349f428142D24af132182088bedC34B4c12774
- RollaFarmPoolETH: 0x977ff648a16f10463E53c036222294C89a60Fe78

Batch stack (registry-wired):
- RollaSettlementBatch: 0x018b1742345290117f289B6f307341ee955068eF
- RollaPositions: 0x1F8eEF54D294B80d7FFe9aff1f7C9Ce79e80AD4E
- RollaFarmPoolETH: 0x92C4E7a56230Dc70666934f3991EBee10Bf07C52

The two verifier entries each link about 180 (optimistic) and 240 (batch) auto-generated constraint-library contracts deployed alongside them (an EIP-170 split of the AIR constraint evaluator), reviewed via repo source, not individually. Wiring verified on-chain: each settlement registry, each pool operator equals positions, each positions settlement.

ON-CHAIN EVIDENCE
- Round verifier returned the exact bound public values for a real proof. Batch verifier returned the correct batchCommit. A full optimistic round settled real funds (a long 2x on a plus 31.65 percent round paid plus 0.003165 ETH, exact).
- ProofRegistry: a 122 KB proof uploaded in chunks of 24 KB or less, then disproveWithRegistry verified it via internal call and slashed the bond.

TESTING
- 99 tests, every verifier component differential-tested against the Plonky3 prover.
- Stateful invariant fuzzing: 25,000 adversarial sequences, solvency never breaks.
- P and L clamp fuzzed: 5,000 full-range inputs, always within minus collateral to plus winCap times collateral.
- ProofRegistry round-trip: multi-chunk, unaligned, 256 fuzz runs all reassemble to the exact bytes.

TESTNET BENCHMARKS (about 130 real microtransactions)
Single-tx latency about 1.3s, pool op about 1.4s, burst about 15 tx per second per account, sub-second blocks, gas price 0.01 gwei. Per-op gas: playerDeposit 41363, playerWithdraw 47483, addLiquidity 44569, postRound about 87000, finalize about 10.5M, STARK verify (dispute-only) about 600M. Full table in the README.

PRIMARY AUDIT SURFACE
The STARK verifier and StarkProofCodec (a bug means accepting invalid proofs means a drainable pool), ProofRegistry chunk reassembly (must equal the exact proof bytes), the bond and slash state machine, RollaPositions P and L, and the FarmPool solvency invariant.

KNOWN ITEMS
- Unaudited beta. FRI num_queries must be raised to a secure count (about 80 to 100) for production. Current proofs use 2 (insecure) for test speed. The vkey and AIR pin the accepted program.
- Large proofs exceed the EVM 128 KB per-tx calldata limit (and the free RPC caps around 90 KB), solved via ProofRegistry (chunk upload plus internal-call verify). The current free Alchemy RPC also rate-limits burst submission to about 15 to 25 tx per second per account. A production RPC or node lifts this.
