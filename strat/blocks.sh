#!/bin/bash
cd /app
main="$(./strat-cli -conf=/app/.strat/strat.conf -rpcclienttimeout=5 getblockcount 2>/dev/null)"
echo "MainNet: $main"
