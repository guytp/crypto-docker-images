#!/bin/bash
cd /app
main="$(./lcc-cli -datadir=/app/.lcc getblockcount 2>/dev/null)"
echo "MainNet: $main"
