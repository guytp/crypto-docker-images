#!/bin/bash
cd /app
if ! ./bitcoin-cli -datadir=/app/.granite -conf=granite.conf stop; then
  echo "Could not gracefully stop granited, force killing"
  pkill -f -9 ./granited
fi

