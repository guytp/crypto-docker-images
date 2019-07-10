#!/bin/bash
cd /app
if ! ./aby-cli -datadir=/app/.aby stop; then
  echo "Could not gracefully stop aby, force killing"
  pkill -f -9 ./abyd
fi

