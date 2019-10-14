#!/bin/bash
cd /app
main="$(./nav-cli -conf=/app/.nav/nav.conf -rpcclienttimeout=5 getblockcount 2>/dev/null)"
echo "MainNet: $main"
