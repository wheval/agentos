#!/bin/sh
set -e
# Run compile script and ensure managed directory has files
./scripts/compile.sh
if [ ! -d managed ] || [ "$(ls -A managed | wc -l)" -eq 0 ]; then
  echo "Compile failed or managed/ is empty" >&2
  exit 1
fi
echo "Compile produced managed/ with files:"
ls -la managed
