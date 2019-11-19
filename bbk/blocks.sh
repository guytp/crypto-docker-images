#!/bin/bash
cd /app
main="$(./bbk-cli -conf=/app/.bbk/bbk.conf -rpcclienttimeout=5 getblockcount 2>/dev/null)"
echo "MainNet: $main"
