#!/bin/bash
cd /app
if ! ./rdd-cli -datadir=/app/.rdd -conf=rdd.conf stop; then
  echo "Could not gracefully stop rdd, force killing"
  pkill -f -9 ./rddd
fi

