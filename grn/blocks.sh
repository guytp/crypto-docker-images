#!/bin/bash
cd /app
main="$(./bitcoin-cli -datadir=/app/.granite -conf=granite.conf getblockcount)"
echo "MainNet: $main"
