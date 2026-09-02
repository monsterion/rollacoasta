// RollaCoasta reference agent — auth, trade, auto-compound. Copy-paste runnable:
//   npm i viem ws
//   PK=0xYOUR_PRIVATE_KEY node examples/agent.mjs
// Uses a DEDICATED low-value trading key (see wallet setup in the README/site).
import { privateKeyToAccount } from 'viem/accounts';
import WebSocket from 'ws';

const BASE = process.env.ROLLA || 'https://rollacoasta.xyz';
const acct = privateKeyToAccount(process.env.PK);

// 1) sign in (SIWE): nonce -> sign the returned message -> token
const { nonce, message } = await (await fetch(`${BASE}/v1/auth/nonce`)).json();
const signature = await acct.signMessage({ message });
const { token } = await (await fetch(`${BASE}/v1/auth/verify`, {
  method: 'POST', headers: { 'content-type': 'application/json' },
  body: JSON.stringify({ address: acct.address, signature, nonce }),
})).json();
console.log('signed in as', acct.address);

// 2) (practice) top up play-money; skip in real-money mode
try { await fetch(`${BASE}/v1/faucet`, { method: 'POST', headers: { 'content-type': 'application/json' }, body: JSON.stringify({ token }) }); } catch {}

// 3) connect the tape and trade
const ws = new WebSocket(BASE.replace(/^http/, 'ws'));
let open = false;
ws.on('open', () => ws.send(JSON.stringify({ type: 'auth', token })));
ws.on('message', raw => {
  const m = JSON.parse(raw);
  if (m.type === 'account') console.log('balance', m.balance);
  // lean with the crowd: positive imbalance -> pressure up
  if (m.type === 'tick' && !open && typeof m.I === 'number') {
    ws.send(JSON.stringify({ type: 'open', side: m.I >= 0 ? 'long' : 'short', leverage: 2, margin: 25 }));
    open = true;
  }
  if (m.type === 'settle') { open = false; }   // round ended; verify via /v1/round/:id
});
ws.on('error', e => console.error('ws', e.message));
