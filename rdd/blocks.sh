#!/bin/bash
cd /app
main="$(./rdd-cli -datadir=/app/.rdd -conf=rdd.conf getblockcount 2>/dev/null)"
echo "MainNet: $main"
