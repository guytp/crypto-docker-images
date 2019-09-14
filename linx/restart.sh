#!/bin/bash
cd /app
if ! ./bitcoin-cli -datadir=/app/.linx -conf=linxcoin.conf stop; then
  echo "Could not gracefully stop linxd, force killing"
  pkill -f -9 ./linxd
fi

