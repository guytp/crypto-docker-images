#!/bin/bash
cd /app
main="$(./doge-cli -conf=/app/.doge/doge.conf -rpcclienttimeout=5 getblockcount 2>/dev/null)"
echo "MainNet: $main"
