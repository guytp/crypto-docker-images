#!/bin/bash
cd /app
main="$(./bitcoin-cli -datadir=/app/.ozc -conf=ozc.conf getblockcount 2>/dev/null)"
echo "MainNet: $main"
