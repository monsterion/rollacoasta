/**
 * Deploy RollaInstruments to Robinhood Chain (or any EVM chain).
 *
 *   node scripts/deploy.mjs --dry     # build + estimate only, no funds needed
 *   node scripts/deploy.mjs           # deploy for real
 *
 * env (see .env.example):
 *   RPC_URL         server-side RPC (holds your Alchemy key — never ship it
 *                   to a browser)
 *   DEPLOYER_KEY    0x-prefixed private key of a funded deployer
 *   VAULT_ADDR      where 100% of breeding fees land
 *   VALIDATOR_ADDR  the address that runs src/validator.js
 *   BREED_FEE_ETH   protocol breeding fee, default 0.01
 *
 * After a successful deploy it verifies the genesis genome on-chain
 * against src/genome.js, writes deployments/<chainId>.json, and prints
 * the exact env lines the server and validator need.
 */

import { readFileSync, writeFileSync, mkdirSync } from 'node:fs';
import {
  createPublicClient, createWalletClient, http, defineChain,
  encodeDeployData, formatEther, parseEther, isAddress
} from 'viem';
import { privateKeyToAccount } from 'viem/accounts';
import { GENESIS_GENOME, genomeHex } from '../src/genome.js';

const DRY = process.argv.includes('--dry');

const RPC_URL = process.env.RPC_URL;
if (!RPC_URL) fail('RPC_URL is not set');

const artifact = JSON.parse(readFileSync('contracts/out/RollaInstruments.json', 'utf8'));

const publicClient = createPublicClient({ transport: http(RPC_URL) });
const chainId = await publicClient.getChainId();
const chain = defineChain({
  id: chainId,
  name: chainId === 4663 ? 'Robinhood Chain' : `chain-${chainId}`,
  nativeCurrency: { name: 'Ether', symbol: 'ETH', decimals: 18 },
  rpcUrls: { default: { http: [RPC_URL] } }
});
console.log(`chain      ${chain.name} (${chainId})`);
console.log(`block      ${await publicClient.getBlockNumber()}`);

const vault = process.env.VAULT_ADDR;
const validator = process.env.VALIDATOR_ADDR;
const breedFee = parseEther(process.env.BREED_FEE_ETH ?? '0.01');
if (!isAddress(vault ?? '')) fail('VAULT_ADDR missing or invalid');
if (!isAddress(validator ?? '')) fail('VALIDATOR_ADDR missing or invalid');

console.log(`vault      ${vault}`);
console.log(`validator  ${validator}`);
console.log(`breed fee  ${formatEther(breedFee)} ETH`);

const deployData = encodeDeployData({
  abi: artifact.abi,
  bytecode: artifact.bytecode,
  args: [vault, validator, breedFee]
});

if (DRY) {
  // Estimate against the live chain without touching a key. Some RPCs
  // refuse creation estimates from unfunded senders; that only affects
  // the estimate, not the eventual deploy.
  try {
    // A sender is required even to simulate: the constructor mints the
    // genesis token to msg.sender, and minting to address(0) reverts.
    const from = process.env.DEPLOYER_KEY
      ? privateKeyToAccount(process.env.DEPLOYER_KEY).address
      : '0x000000000000000000000000000000000000dEaD';
    const gas = await publicClient.estimateGas({ account: from, data: deployData });
    const gasPrice = await publicClient.getGasPrice();
    console.log(`\nDRY RUN OK — creation estimates at ${gas} gas`);
    console.log(`~cost at current gas price: ${formatEther(gas * gasPrice)} ETH`);
  } catch (err) {
    console.log(`\nDRY RUN — calldata built (${(deployData.length - 2) / 2} bytes); estimate refused: ${err.shortMessage ?? err.message}`);
  }
  process.exit(0);
}

const KEY = process.env.DEPLOYER_KEY;
if (!KEY) fail('DEPLOYER_KEY is not set (use --dry to test without one)');
const account = privateKeyToAccount(KEY);
const balance = await publicClient.getBalance({ address: account.address });
console.log(`deployer   ${account.address} (${formatEther(balance)} ETH)`);
if (balance === 0n) fail('deployer has no funds on this chain');

const wallet = createWalletClient({ account, chain, transport: http(RPC_URL) });

console.log('\ndeploying…');
const hash = await wallet.deployContract({
  abi: artifact.abi, bytecode: artifact.bytecode, args: [vault, validator, breedFee]
});
console.log(`tx         ${hash}`);
const receipt = await publicClient.waitForTransactionReceipt({ hash, timeout: 180_000 });
if (receipt.status !== 'success') fail(`deploy tx reverted in block ${receipt.blockNumber}`);
const address = receipt.contractAddress;
console.log(`address    ${address}`);
console.log(`block      ${receipt.blockNumber} · gas used ${receipt.gasUsed}`);

// Trust nothing: read the genesis back and compare byte-for-byte.
const [genome] = await publicClient.readContract({
  address, abi: artifact.abi, functionName: 'getInstrument', args: [0n]
});
if (genome !== GENESIS_GENOME) {
  fail(`GENESIS MISMATCH on-chain ${genomeHex(genome)} != local ${genomeHex(GENESIS_GENOME)}`);
}
console.log('genesis    verified — on-chain $GUH genome matches src/genome.js');

mkdirSync('deployments', { recursive: true });
const record = {
  chainId, address, txHash: hash, block: Number(receipt.blockNumber),
  deployer: account.address, vault, validator,
  breedFee: breedFee.toString(), deployedAt: new Date().toISOString()
};
writeFileSync(`deployments/${chainId}.json`, JSON.stringify(record, null, 2));
console.log(`\nwrote deployments/${chainId}.json`);

console.log(`\nnext steps — add to .env:
  INSTRUMENTS_CONTRACT=${address}
  INSTRUMENT_ID=0
then restart the game server, and start the gate daemon:
  RPC_URL=… INSTRUMENTS_CONTRACT=${address} VALIDATOR_KEY=<key for ${validator}> npm run validator`);

function fail(msg) { console.error('FATAL:', msg); process.exit(1); }
