#!/bin/bash
cd /app
main="$(./bitcoin-cli -datadir=/app/.grn -conf=grn.conf getblockcount)"
echo "MainNet: $main"
