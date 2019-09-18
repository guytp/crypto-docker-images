#!/bin/bash
cd /app
main="$(./xmy-cli -datadir=/app/.xmy -conf=xmy.conf getblockcount 2>/dev/null)"
echo "MainNet: $main"
