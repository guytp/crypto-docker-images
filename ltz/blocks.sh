#!/bin/bash
cd /app
main="$(./ltz-cli -datadir=/app/.ltz -conf=ltz.conf getblockcount 2>/dev/null)"
echo "MainNet: $main"
