/**
 * Genome codec — the bridge between the chain and the engine.
 *
 * An instrument IS its parameter set. We pack that parameter set into a
 * single uint256 the way CryptoKitties packed cattributes, except these
 * genes are not cosmetic: every field below is a coefficient in the
 * Ouroboros price equation, so breeding two instruments produces a
 * genuinely different market, not a different picture.
 *
 * THIS TABLE IS MIRRORED IN contracts/RollaInstruments.sol. The bit
 * layout, scales and envelope bounds must match exactly — test/contracts.mjs
 * asserts the parity by encoding here and decoding on-chain.
 *
 * Layout (LSB first):
 *   bits   width  gene        scale  meaning
 *   0      12     lambda      1e3    flow-impact coefficient
 *   12     12     expo        1e3    impact convexity (the anti-whale)
 *   24     10     kUp         1e2    upside jump scale
 *   34     10     kDn         1e2    downside jump scale
 *   44     10     rateUp      1e3    upside jumps per second
 *   54     10     rateDn      1e3    downside jumps per second
 *   64     12     phi         1e3    funding drag
 *   76     20     poolDepth   1      L, the impact denominator
 *   96     12     muCalm      1e4    regime drifts are offset-signed:
 *   108    12     sigmaCalm   1e4      stored = mu*1e4 + 2048
 *   120    12     muPump      1e4
 *   132    12     sigmaPump   1e4
 *   144    12     muDump      1e4
 *   156    12     sigmaDump   1e4
 *   168    12     muEuphoria  1e4
 *   180    12     sigmaEuphoria 1e4
 *   192    16     generation         set by the contract, never mixed
 *   208+   spare  zero
 */

export const MU_OFFSET = 2048;

/** name, bit offset, width, envelope min, envelope max (raw units). */
export const GENES = [
  ['lambda',        0n, 12n,  100n,   2000n],
  ['expo',         12n, 12n, 1000n,   2500n],
  ['kUp',          24n, 10n,   20n,    500n],
  ['kDn',          34n, 10n,   20n,    500n],
  ['rateUp',       44n, 10n,    5n,    400n],
  ['rateDn',       54n, 10n,    5n,    400n],
  ['phi',          64n, 12n,   50n,   1500n],
  ['poolDepth',    76n, 20n,  200n, 100000n],
  ['muCalm',       96n, 12n, 1648n,   2448n],
  ['sigmaCalm',   108n, 12n,   20n,    900n],
  ['muPump',      120n, 12n, 1648n,   2448n],
  ['sigmaPump',   132n, 12n,   20n,    900n],
  ['muDump',      144n, 12n, 1648n,   2448n],
  ['sigmaDump',   156n, 12n,   20n,    900n],
  ['muEuphoria',  168n, 12n, 1648n,   2448n],
  ['sigmaEuphoria',180n, 12n,  20n,    900n]
];

export const GENERATION_OFFSET = 192n;
export const GENERATION_WIDTH = 16n;

/** GUH-PERP-30, Table 4.1, in raw gene units. Token #0's genome. */
export const GENESIS_RAW = {
  lambda: 850n, expo: 1400n, kUp: 100n, kDn: 260n,
  rateUp: 50n, rateDn: 110n, phi: 300n, poolDepth: 1400n,
  muCalm: 2064n, sigmaCalm: 90n,
  muPump: 2138n, sigmaPump: 180n,
  muDump: 1943n, sigmaDump: 220n,
  muEuphoria: 2198n, sigmaEuphoria: 340n
};

const mask = width => (1n << width) - 1n;

/** raw gene map (+ optional generation) -> uint256 genome */
export function encodeGenome(raw, generation = 0n) {
  let genome = 0n;
  for (const [name, offset, width] of GENES) {
    const value = raw[name];
    if (value === undefined) throw new Error(`missing gene ${name}`);
    if (value < 0n || value > mask(width)) throw new Error(`gene ${name} out of field range`);
    genome |= (value & mask(width)) << offset;
  }
  genome |= (BigInt(generation) & mask(GENERATION_WIDTH)) << GENERATION_OFFSET;
  return genome;
}

/** uint256 genome -> raw gene map + generation */
export function decodeGenome(genome) {
  genome = BigInt(genome);
  const raw = {};
  for (const [name, offset, width] of GENES) {
    raw[name] = (genome >> offset) & mask(width);
  }
  raw.generation = (genome >> GENERATION_OFFSET) & mask(GENERATION_WIDTH);
  return raw;
}

/** Envelope check. Breeding clamps to this on-chain; verify anyway. */
export function violations(genome) {
  const raw = decodeGenome(genome);
  const out = [];
  for (const [name, , , min, max] of GENES) {
    if (raw[name] < min || raw[name] > max) {
      out.push(`${name}=${raw[name]} outside [${min}, ${max}]`);
    }
  }
  return out;
}

/**
 * Decode into the exact params shape the price engine consumes.
 * The engine's hardcoded GUH constant and this decode of the genesis
 * genome must agree — asserted in test/genome.test.mjs.
 */
export function paramsFromGenome(genome, symbol = 'GUH') {
  const raw = decodeGenome(genome);
  const f = (v, scale) => Number(v) / scale;
  const mu = v => (Number(v) - MU_OFFSET) / 1e4;
  return {
    symbol,
    generation: Number(raw.generation),
    lambda: f(raw.lambda, 1e3),
    expo: f(raw.expo, 1e3),
    kUp: f(raw.kUp, 1e2),
    kDn: f(raw.kDn, 1e2),
    rateUp: f(raw.rateUp, 1e3),
    rateDn: f(raw.rateDn, 1e3),
    phi: f(raw.phi, 1e3),
    poolDepth: Number(raw.poolDepth),
    regimes: {
      calm:     { mu: mu(raw.muCalm),     sigma: f(raw.sigmaCalm, 1e4) },
      pump:     { mu: mu(raw.muPump),     sigma: f(raw.sigmaPump, 1e4) },
      dump:     { mu: mu(raw.muDump),     sigma: f(raw.sigmaDump, 1e4) },
      euphoria: { mu: mu(raw.muEuphoria), sigma: f(raw.sigmaEuphoria, 1e4) }
    },
    regimeNames: ['calm', 'pump', 'dump', 'euphoria'],
    regimeDwell: [3, 10]
  };
}

export const GENESIS_GENOME = encodeGenome(GENESIS_RAW, 0n);
export const genomeHex = genome => '0x' + BigInt(genome).toString(16).padStart(64, '0');
