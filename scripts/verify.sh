#!/usr/bin/env bash
# Reads the deployed contract back from the Midnight indexer.
# Anyone can run this to confirm the address in README.md is real.
set -euo pipefail

NETWORK="${1:-preview}"
ADDRESS="${2:-2c5b229e9092c0726cafcc7b856ef2f0ae301e25b3eb97b63881ed715fb2fe4e}"
INDEXER="https://indexer.${NETWORK}.midnight.network/api/v3/graphql"

QUERY=$(printf '{"query":"query { contractAction(address: \\"%s\\") { __typename address transaction { hash block { height } } } }"}' "$ADDRESS")

RESPONSE=$(curl -sS -X POST "$INDEXER" -H 'Content-Type: application/json' -d "$QUERY")

if ! grep -q '"__typename":"ContractDeploy"' <<<"$RESPONSE"; then
  echo "Contract not found on ${NETWORK}."
  echo "$RESPONSE"
  exit 1
fi

extract() { sed -n "s/.*\"$1\":\"\([^\"]*\)\".*/\1/p" <<<"$RESPONSE"; }

echo "Network:  ${NETWORK}"
echo "Address:  $(extract address)"
echo "Tx:       $(extract hash)"
echo "Block:    $(sed -n 's/.*"height":\([0-9]*\).*/\1/p' <<<"$RESPONSE")"
echo "Type:     ContractDeploy"
echo
echo "Verified on-chain."
