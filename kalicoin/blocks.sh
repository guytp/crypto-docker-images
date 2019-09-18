#!/bin/bash
cd /app
main="$(./bitcoin-cli -conf=/app/.kali/kali.conf -rpcclienttimeout=5 getblockcount 2>/dev/null)"
echo "MainNet: $main"
