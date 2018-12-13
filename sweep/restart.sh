#!/bin/bash
cd /app
if ! ./bitcoin-cli -conf=/app/.sweep/sweep.conf -rpcclienttimeout=5 stop; then
  echo "Could not gracefully stop Sweep, force killing"
  pkill -f -9 ./sweepd
fi

