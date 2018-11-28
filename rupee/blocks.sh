#!/bin/bash
cd /app
main="$(./bitcoin-cli -conf=/app/.RupeeCore/Rupee.conf -rpcclienttimeout=5 getblockcount 2>/dev/null)"
echo "MainNet: $main"
