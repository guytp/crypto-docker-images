#!/bin/bash
cd /app
main="$(./rdd-cli -datadir=/app/.rdd getblockcount 2>/dev/null)"
echo "MainNet: $main"
