#!/bin/sh
set -e
rm -rf managed
mkdir -p managed
compact compile contracts/counter.compact managed
ls -la managed
