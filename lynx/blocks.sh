#!/bin/bash
cd /app
main="$(./lynx-cli -conf=/app/.lynx/lynx.conf -rpcclienttimeout=5 getblockcount 2>/dev/null)"
echo "MainNet: $main"
