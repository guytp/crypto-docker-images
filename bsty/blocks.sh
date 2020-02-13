#!/bin/bash
cd /app
main="$(./bsty-cli -conf=/app/.bsty/bsty.conf -rpcclienttimeout=5 getblockcount 2>/dev/null)"
echo "MainNet: $main"
