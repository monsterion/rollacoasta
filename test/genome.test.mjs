/** Codec tests for the genome bit-packing, self-contained.
 *
 *  The one assertion that matters most: the genesis genome must decode to
 *  the published GUH-PERP-30 parameter set — the numbers are inlined here
 *  (they are also in contracts/RollaInstruments.sol as GENESIS_GENOME), so
 *  this test needs nothing but src/genome.js. */
import assert from 'node:assert/strict';
import {
  GENES, GENESIS_RAW, GENESIS_GENOME, encodeGenome, decodeGenome,
  violations, paramsFromGenome
} from '../src/genome.js';

// Published GUH-PERP-30 values (the instrument the genesis genome encodes).
const EXPECT = {
  lambda: 0.85, expo: 1.4, kUp: 1.0, kDn: 2.6,
  rateUp: 0.05, rateDn: 0.11, phi: 0.30, poolDepth: 1400
};
const EXPECT_REGIMES = {
  calm:     { mu: 0.0016, sigma: 0.009 },
  pump:     { mu: 0.0090, sigma: 0.018 },
  dump:     { mu: -0.0105, sigma: 0.022 },
  euphoria: { mu: 0.0150, sigma: 0.034 }
};

// 1. genesis genome decodes to the published parameter set
const p = paramsFromGenome(GENESIS_GENOME, 'GUH');
for (const [k, v] of Object.entries(EXPECT)) {
  assert.equal(p[k], v, `genesis ${k}: got ${p[k]}, expected ${v}`);
}
for (const [name, r] of Object.entries(EXPECT_REGIMES)) {
  assert.equal(p.regimes[name].mu, r.mu, `mu ${name}`);
  assert.equal(p.regimes[name].sigma, r.sigma, `sigma ${name}`);
}
assert.deepEqual(violations(GENESIS_GENOME), []);
console.log('ok  genesis genome decodes to published GUH-PERP-30 values');

// 2. GENESIS_RAW round-trips through encode/decode
{
  const back = decodeGenome(GENESIS_GENOME);
  for (const [name] of GENES) assert.equal(back[name], GENESIS_RAW[name], `genesis raw ${name}`);
  console.log('ok  GENESIS_RAW encodes/decodes losslessly');
}

// 3. fuzz roundtrip across full field widths
{
  let x = 0x9e3779b97f4a7c15n;
  const rnd = mod => { x ^= x << 13n; x ^= x >> 7n; x ^= x << 17n; x &= (1n << 64n) - 1n; return x % mod; };
  for (let i = 0; i < 5000; i++) {
    const raw = {};
    for (const [name, , width] of GENES) raw[name] = rnd(1n << width);
    const gen = rnd(1n << 16n);
    const back = decodeGenome(encodeGenome(raw, gen));
    for (const [name] of GENES) assert.equal(back[name], raw[name], `${name} roundtrip @${i}`);
    assert.equal(back.generation, gen);
  }
  console.log('ok  5000 random genomes roundtrip losslessly');
}

// 4. fields never bleed into neighbours
{
  const zero = {};
  for (const [name] of GENES) zero[name] = 0n;
  for (const [name, , width] of GENES) {
    const raw = { ...zero, [name]: (1n << width) - 1n };
    const back = decodeGenome(encodeGenome(raw, 0n));
    for (const [other] of GENES) assert.equal(back[other], raw[other], `${name} maxed bled into ${other}`);
  }
  console.log('ok  no bit-field overlap');
}

console.log('\nall genome tests passed');
