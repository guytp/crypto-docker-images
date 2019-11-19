#!/bin/bash
cd /app
main="$(./bean-cli -datadir=/app/.bean -conf=bean.conf getblockcount 2>/dev/null)"
echo "MainNet: $main"
