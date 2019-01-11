#!/bin/bash
cd /app
if ! ./bitcoin-cli -datadir=/app/.droidz -conf=droidz.conf stop; then
  echo "Could not gracefully stop droidzd, force killing"
  pkill -f -9 ./droidzd
fi

