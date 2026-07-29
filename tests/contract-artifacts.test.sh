#!/bin/sh
set -e

grep -q 'export ledger total_transferred: Uint<64>;' src/Policy.compact
grep -q 'witness transfer_amount(): Uint<64>;' src/Policy.compact
grep -q 'export circuit submit_transfer(): \[\] {' src/Policy.compact

grep -q '"name": "submit_transfer"' managed/compiler/contract-info.json
grep -q '"name": "transfer_amount"' managed/compiler/contract-info.json
grep -q '"name": "total_transferred"' managed/compiler/contract-info.json

grep -q 'submit_transfer' managed/contract/index.d.ts
grep -q 'transfer_amount' managed/contract/index.js

echo "Contract source and generated artifacts are consistent."
