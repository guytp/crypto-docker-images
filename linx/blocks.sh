#!/bin/bash
cd /app
main="$(./bitcoin-cli -datadir=/app/.linx -conf=linxcoin.conf getblockcount 2>/dev/null)"
echo "MainNet: $main"
