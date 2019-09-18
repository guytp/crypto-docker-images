#!/bin/bash
cd /app
main="$(./bitcoin-cli -datadir=/app/.rup -conf=rup.conf -rpcclienttimeout=5 getblockcount 2>/dev/null)"
echo "MainNet: $main"
