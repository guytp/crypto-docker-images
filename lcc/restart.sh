#!/bin/bash
cd /app
if ! ./lcc-cli -datadir=/app/.lcc stop; then
  echo "Could not gracefully stop lcc, force killing"
  pkill -f -9 ./lccd
fi
