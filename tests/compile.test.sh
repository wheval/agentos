#!/bin/sh
set -e
./scripts/compile.sh
if [ ! -f managed/compiler/contract-info.json ]; then
  echo "Missing managed/compiler/contract-info.json" >&2
  exit 1
fi
echo "Compile produced managed/ artifacts:"
ls -la managed
