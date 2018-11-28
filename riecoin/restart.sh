#!/bin/bash
cd /app
if ! ./riecoin-cli -datadir=/app/.riecoin stop; then
  echo "Could not gracefully stop riecoin, force killing"
  pkill -f -9 ./riecoind
fi

