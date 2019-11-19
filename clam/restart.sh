#!/bin/bash
cd /app
if ! ./clam-cli -datadir=/app/.evn -conf=clam.conf stop; then
  echo "Could not gracefully stop clamd, force killing"
  pkill -f -9 ./clamd
fi

