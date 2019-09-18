#!/bin/bash
cd /app
main="$(./ric-cli -datadir=/app/.ric -conf=ric.conf getblockcount 2>/dev/null)"
echo "MainNet: $main"
