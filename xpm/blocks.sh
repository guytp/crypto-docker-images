#!/bin/bash
cd /app
main="$(./bitcoin-cli -datadir=/app/.xpm -conf=xpm.conf getblockcount 2>/dev/null)"
echo "MainNet: $main"
