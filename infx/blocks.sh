#!/bin/bash
cd /app
main="$(./bitcoin-cli -datadir=/app/.infx -conf=infx.conf getblockcount 2>/dev/null)"
echo "MainNet: $main"
