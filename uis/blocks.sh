#!/bin/bash
cd /app
main="$(./bitcoin-cli -conf=/app/.uis/uis.conf -rpcclienttimeout=5 getblockcount 2>/dev/null)"
echo "MainNet: $main"
