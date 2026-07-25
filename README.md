# Risein — Level 1: Midnight

## Project: PrivateSwap — privacy-first micro-marketplace (draft)

PrivateSwap is a privacy-preserving marketplace where buyers can purchase digital goods using private payments on Midnight. Public ledger tracks listings and availability; purchase details (payer identity, price negotiation secrets) are kept as private witnesses and only validated in ZK during contract execution.

## Requirements
- Compact compiler and proof server installed
- Node 22, Docker

## Setup (local)
1. Install Compact and start proof server (see course notes)
2. Run `scripts/compile.sh` to compile the contract (outputs to managed/)
3. Run tests: `./tests/compile.test.sh`

## Public vs Private
Public state: listings, availability flags, on-chain balances.
Private witness: buyer credentials, negotiated price, and private delivery tokens.

