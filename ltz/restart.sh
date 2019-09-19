#!/bin/bash
cd /app
if ! ./ltz-cli -datadir=/app/.ltz -conf=ltz.zconf stop; then
  echo "Could not gracefully stop ltzd, force killing"
  pkill -f -9 ./ltzd
fi

