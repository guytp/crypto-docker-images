#!/bin/bash
cd /app
if ! ./bitcoin-cli -datadir=/app/.infx -conf=infx.conf stop; then
  echo "Could not gracefully stop infxd, force killing"
  pkill -f -9 ./infxd
fi

