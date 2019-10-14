#!/bin/bash
cd /app
main="$(./grs-cli -conf=/app/.grs/grs.conf -rpcclienttimeout=5 getblockcount 2>/dev/null)"
echo "MainNet: $main"
