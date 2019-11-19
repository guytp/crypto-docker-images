#!/bin/bash
cd /app
main="$(./clam-cli -datadir=/app/.clam -conf=clam.conf getblockcount 2>/dev/null)"
echo "MainNet: $main"
