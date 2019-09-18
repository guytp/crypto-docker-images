#!/bin/bash
cd /app
if ! ./bitcoin-cli -datadir=/app/.pot -conf=pot.conf stop; then
  echo "Could not gracefully stop potd, force killing"
  pkill -f -9 ./potd
fi

