#!/bin/bash
cd /app
if ! ./bitcoin-cli -datadir=/app/.nvc -conf=nvc.conf stop; then
  echo "Could not gracefully stop nvcd, force killing"
  pkill -f -9 ./nvcd
fi

