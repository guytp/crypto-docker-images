#!/bin/bash
cd /app
main="$(./bitcoin-cli -datadir=/app/.droidz -conf=droidz.conf getblockcount)"
echo "MainNet: $main"
