#!/bin/bash
cd /app
main="$(./bitcoin-cli -datadir=/app/.pot -conf=potcoin.conf getblockcount 2>/dev/null)"
echo "MainNet: $main"
