#!/bin/bash
cd /app
main="$(./lcc-cli -datadir=/app/.lcc -conf=lcc.conf getblockcount 2>/dev/null)"
echo "MainNet: $main"
