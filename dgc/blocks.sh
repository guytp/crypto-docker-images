#!/bin/bash
cd /app
main="$(./dgc-cli -conf=/app/.dgc/dgc.conf -rpcclienttimeout=5 getblockcount 2>/dev/null)"
echo "MainNet: $main"
