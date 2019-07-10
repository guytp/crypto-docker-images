#!/bin/bash
cd /app
main="$(./bitcoin-cli -datadir=/app/.nvc getblockcount 2>/dev/null)"
echo "MainNet: $main"
