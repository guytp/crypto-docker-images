#!/bin/bash
cd /app
main="$(./xmy-cli -datadir=/app/.xmy getblockcount 2>/dev/null)"
echo "MainNet: $main"
