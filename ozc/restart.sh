#!/bin/bash
cd /app
if ! ./bitcoin-cli -datadir=/app/.ozc -conf=ozc.conf stop; then
  echo "Could not gracefully stop ozcd, force killing"
  pkill -f -9 ./ozcd
fi

