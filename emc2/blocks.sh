#!/bin/bash
cd /app
main="$(./emc2-cli -conf=/app/.emc2/emc2.conf -rpcclienttimeout=5 getblockcount 2>/dev/null)"
echo "MainNet: $main"
