#!/bin/bash
cd /app
if ! ./bean-cli -datadir=/app/.evn -conf=bean.conf stop; then
  echo "Could not gracefully stop beand, force killing"
  pkill -f -9 ./beand
fi

