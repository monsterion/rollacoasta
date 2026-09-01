/**
 * Compiles contracts/ with solc-js (no compiler download, no framework)
 * and writes ABI + bytecode to contracts/out/. OpenZeppelin imports
 * resolve from node_modules.
 */
import solc from 'solc';
import { readFileSync, writeFileSync, mkdirSync } from 'node:fs';
import { join } from 'node:path';

const NAME = 'RollaInstruments';

const input = {
  language: 'Solidity',
  sources: {
    [`${NAME}.sol`]: { content: readFileSync(`contracts/${NAME}.sol`, 'utf8') }
  },
  settings: {
    optimizer: { enabled: true, runs: 500 },
    outputSelection: { '*': { '*': ['abi', 'evm.bytecode.object', 'evm.deployedBytecode.object'] } }
  }
};

function findImports(path) {
  try {
    return { contents: readFileSync(join('node_modules', path), 'utf8') };
  } catch {
    return { error: `import not found: ${path}` };
  }
}

const output = JSON.parse(solc.compile(JSON.stringify(input), { import: findImports }));

const fatal = (output.errors ?? []).filter(e => e.severity === 'error');
for (const e of output.errors ?? []) console.error(e.formattedMessage);
if (fatal.length) process.exit(1);

const artifact = output.contracts[`${NAME}.sol`][NAME];
mkdirSync('contracts/out', { recursive: true });
writeFileSync(`contracts/out/${NAME}.json`, JSON.stringify({
  contractName: NAME,
  abi: artifact.abi,
  bytecode: '0x' + artifact.evm.bytecode.object,
  deployedBytecode: '0x' + artifact.evm.deployedBytecode.object
}, null, 2));

console.log(`compiled ${NAME} — ${artifact.evm.deployedBytecode.object.length / 2} bytes deployed`);
