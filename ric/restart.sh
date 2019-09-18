#!/bin/bash
cd /app
if ! ./ric-cli -datadir=/app/.riecoin -conf=ric.conf stop; then
  echo "Could not gracefully stop riecoin, force killing"
  pkill -f -9 ./ricd
fi

