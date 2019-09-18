#!/bin/bash
cd /app
main="$(./bitcoin-cli -datadir=/app/.xst -conf=/app/.xst/xst.conf getblockcount 2>/dev/null)"
echo "MainNet: $main"
