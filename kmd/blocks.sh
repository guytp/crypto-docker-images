#!/bin/bash
cd /app
main="$(./kmd-cli -conf=/app/.kmd/kmd.conf -rpcclienttimeout=5 getblockcount 2>/dev/null)"
echo "MainNet: $main"
