#!/bin/bash
cd /app
main="$(./bitcoin-cli -datadir=/app/.linx -conf=linx.conf getblockcount 2>/dev/null)"
echo "MainNet: $main"
