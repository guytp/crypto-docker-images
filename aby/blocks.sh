#!/bin/bash
cd /app
main="$(./aby-cli -datadir=/app/.aby getblockcount 2>/dev/null)"
echo "MainNet: $main"
