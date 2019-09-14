#!/bin/bash
cd /app
main="$(./via-cli -conf=/app/.via/via.conf -rpcclienttimeout=5 getblockcount 2>/dev/null)"
echo "MainNet: $main"
