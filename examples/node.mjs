// RollaCoasta entropy + verifier node. One command:
//   npm i viem
//   PK=0xYOUR_KEY ROLLA=https://rollacoasta.xyz node examples/node.mjs
// Posts entropy into each round's seed and independently verifies settled rounds,
// earning governance points. Use a dedicated low-value key.
import { privateKeyToAccount } from 'viem/accounts';
import { randomBytes, createHash } from 'node:crypto';

const BASE = process.env.ROLLA || 'https://rollacoasta.xyz';
const acct = privateKeyToAccount(process.env.PK);
const sha256 = s => createHash('sha256').update(s).digest('hex');
const jget = p => fetch(BASE + p).then(r => r.json());
const jpost = (p, b) => fetch(BASE + p, { method: 'POST', headers: { 'content-type': 'application/json' }, body: JSON.stringify(b) }).then(r => r.json());

// sign in (SIWE)
const { nonce, message } = await jget('/v1/auth/nonce');
const signature = await acct.signMessage({ message });
const { token } = await jpost('/v1/auth/verify', { address: acct.address, signature, nonce });
console.log('node online:', acct.address);

const seen = new Set();
async function tick() {
  // 1) contribute entropy for the next round
  try {
    const r = await jpost('/v1/entropy', { token, contribution: randomBytes(16).toString('hex') });
    if (r.points != null) process.stdout.write(`\rentropy posted (round ${r.forRound}) · points ${r.points}   `);
  } catch {}
  // 2) independently verify freshly settled rounds: re-hash the revealed seed
  try {
    const { rounds } = await jget('/v1/history');
    for (const rd of rounds) {
      if (seen.has(rd.roundId) || !rd.serverSeed) continue;
      seen.add(rd.roundId);
      const ok = sha256(rd.serverSeed) === rd.commit;         // the fairness check, done locally
      if (ok) {
        const v = await jpost('/v1/verify', { token, roundId: rd.roundId, commit: sha256(rd.serverSeed) });
        if (v.verified) console.log(`\nverified round ${rd.roundId} ✓  · points ${v.points}`);
      } else {
        console.error(`\n⚠ round ${rd.roundId} FAILED verification — commit != sha256(seed)`);
      }
    }
  } catch {}
}
setInterval(tick, 4000);
tick();
