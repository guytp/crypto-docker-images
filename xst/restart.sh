#!/bin/bash
cd /app
if ! ./bitcoin-cli -datadir=/app/.xst -conf=/app/.xst/xst.conf stop; then
  echo "Could not gracefully stop xstd, force killing"
  pkill -f -9 ./xstd
fi

