#!/bin/bash
cd /app
if ! ./bitcoin-cli -datadir=/app/.rup conf=rup.conf -rpcclienttimeout=5 stop; then
  echo "Could not gracefully stop Rupee, force killing"
  pkill -f -9 ./rupeed
fi

