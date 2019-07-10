#!/bin/bash
cd /app
if ! ./bitcoin-cli -datadir=/app/.bean stop; then
  echo "Could not gracefully stop beand, force killing"
  pkill -f -9 ./beand
fi

