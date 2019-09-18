#!/bin/bash
cd /app
if ! ./bitcoin-cli -datadir=/app/.grn -conf=grn.conf stop; then
  echo "Could not gracefully stop granited, force killing"
  pkill -f -9 ./granited
fi

