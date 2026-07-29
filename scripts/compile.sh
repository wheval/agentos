#!/bin/sh
set -e
mkdir -p managed
compact compile src/Policy.compact managed
ls -la managed
