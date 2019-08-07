#!/bin/bash
cd /app
if ! ./xmy-cli -datadir=/app/.xmy stop; then
  echo "Could not gracefully stop xmy, force killing"
  pkill -f -9 ./xmyd
fi

