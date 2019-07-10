#!/bin/bash
cd /app
main="$(./bitcoin-cli -datadir=/app/.xpm getblockcount 2>/dev/null)"
echo "MainNet: $main"
