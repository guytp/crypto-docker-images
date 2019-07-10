#!/bin/bash
cd /app
main="$(./beancash-cli -datadir=/app/.bean getblockcount 2>/dev/null)"
echo "MainNet: $main"
