#!/bin/bash
cd /app
main="$(./bitcoin-cli -datadir=/app/.drz -conf=drz.conf getblockcount)"
echo "MainNet: $main"
