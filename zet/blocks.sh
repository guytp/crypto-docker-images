#!/bin/bash
cd /app
main="$(./zet-cli -conf=/app/.zet/zet.conf -rpcclienttimeout=5 getblockcount 2>/dev/null)"
echo "MainNet: $main"
