#!/bin/sh
set -e
mkdir -p managed
compact compile src/PrivateCounter.compact -o managed
ls -la managed
