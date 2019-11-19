#!/bin/bash
cd /app
main="$(./rvn-cli -datadir=/app/.rvn -conf=rvn.conf getblockcount 2>/dev/null)"
echo "MainNet: $main"
