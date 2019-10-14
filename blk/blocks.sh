#!/bin/bash
cd /app
main="$(./blk-cli -conf=/app/.blk/blk.conf -rpcclienttimeout=5 getblockcount 2>/dev/null)"
echo "MainNet: $main"
