#!/bin/bash
cd /app
if ! ./bitcoin-cli -datadir=/app/.xpm -conf xpm.conf stop; then
  echo "Could not gracefully stop xpmd, force killing"
  pkill -f -9 ./xpmd
fi

