#!/bin/bash
cd /app
main="$(./riecoin-cli -datadir=/app/.riecoin getblockcount 2>/dev/null)"
echo "MainNet: $main"
