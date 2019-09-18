#!/bin/bash
cd /app
if ! ./bitcoin-cli -datadir=/app/.drz -conf=drz.conf stop; then
  echo "Could not gracefully stop drzd, force killing"
  pkill -f -9 ./drzd
fi

