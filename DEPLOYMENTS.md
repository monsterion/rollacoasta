# Deployments — Robinhood testnet (chainId 46630)

Live, registry-wired deployment of the RollaCoasta trustless-settlement system.
Both settlement paths (optimistic + eager batch) share the two verifier entries and
one `ProofRegistry`. Wiring verified on-chain (each settlement's `registry`, each
pool's `operator == positions`, each positions' `settlement`).

## Verification (shared)

| Contract | Address |
|---|---|
| ProofRegistry (chunked large-proof delivery) | `0xa8318B3F05A5289A0c52139fe67E92E499f2D97b` |
| RoundVerifierEntry (optimistic verifier; links ~180 constraint libs) | `0x191aEAA4D097fe778aD274217102305c09DdB4C2` |
| BatchVerifierEntry (batch verifier; links ~240 constraint libs) | `0x8b1EF83dbd4608423bDb4EbF54D897147413757E` |

## Optimistic stack (registry-wired)

| Contract | Address |
|---|---|
| RollaSettlementOptimistic | `0xe2Ef21156B39af8df3C74065140fbEc0251Aa27D` |
| RollaPositions | `0xbb349f428142D24af132182088bedC34B4c12774` |
| RollaFarmPoolETH | `0x977ff648a16f10463E53c036222294C89a60Fe78` |

## Batch stack (registry-wired)

| Contract | Address |
|---|---|
| RollaSettlementBatch | `0x018b1742345290117f289B6f307341ee955068eF` |
| RollaPositions | `0x1F8eEF54D294B80d7FFe9aff1f7C9Ce79e80AD4E` |
| RollaFarmPoolETH | `0x92C4E7a56230Dc70666934f3991EBee10Bf07C52` |

## Notes

- The verifier entries each link ~180 (optimistic) / ~240 (batch) auto-generated
  constraint-library contracts deployed alongside them (EIP-170 split of the AIR
  constraint evaluator) — reviewed via repo source, not individually.
- **UNAUDITED beta.** FRI `num_queries` must be raised to a secure count (~80–100)
  for production; current proofs use 2 (insecure) for test speed. The `vkey`/AIR pins
  the accepted program.
- On-chain evidence: round + batch verifiers each verified a real proof; an optimistic
  round settled real funds; `disproveWithRegistry` verified a chunk-uploaded proof and
  slashed a bond. See `AUDIT.md` for the full system and `README.md` for benchmarks.
