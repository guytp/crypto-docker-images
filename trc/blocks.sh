#!/bin/bash
cd /app
main="$(./trc-cli -conf=/app/.trc/trc.conf -rpcclienttimeout=5 getblockcount 2>/dev/null)"
echo "MainNet: $main"
