#!/bin/bash
cd /app
if ! ./rvn-cli -datadir=/app/.evn -conf=rvn.conf stop; then
  echo "Could not gracefully stop rvnd, force killing"
  pkill -f -9 ./rvnd
fi

