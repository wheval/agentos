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


## Selected Project Idea — Vibe Trading (Primary)

Vibe Trading is a privacy-preserving social trading platform where users follow and copy top traders without exposing trader identities or internal strategies. Midnight's selective disclosure and ZK proofs let copy-trades execute with verifiable fairness while keeping trader profiles and signals private. This enables safe copy-trading and preserves market integrity by proving correctness of executed strategies without doxxing liquidity providers.

## Backup Idea — Private Stablecoin Remittance App

Workers send money cross-border with amounts and recipient identities hidden from the public chain. Transfers are private yet auditable — Midnight balances consumer privacy with compliance-ready auditability, making remittances viable for mainstream and regulated use.

