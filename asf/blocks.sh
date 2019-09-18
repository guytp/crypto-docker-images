#!/bin/bash
cd /app
main="$(./asf-cli -conf=/app/.asf/asf.conf -rpcclienttimeout=5 getblockcount 2>/dev/null)"
echo "MainNet: $main"
