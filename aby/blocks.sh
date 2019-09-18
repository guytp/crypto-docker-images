#!/bin/bash
cd /app
main="$(./aby-cli -datadir=/app/.aby -conf=aby.conf getblockcount 2>/dev/null)"
echo "MainNet: $main"
