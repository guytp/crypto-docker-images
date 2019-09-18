#!/bin/bash
cd /app
main="$(./bitcoin-cli -datadir=/app/.nvc -conf=nvc.conf getblockcount 2>/dev/null)"
echo "MainNet: $main"
