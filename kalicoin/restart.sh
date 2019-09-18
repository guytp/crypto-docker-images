#!/bin/bash
cd /app
if ! ./bitcoin-cli -conf=/app/.kali/kali.conf -rpcclienttimeout=5 stop; then
  echo "Could not gracefully stop kali, force killing"
  pkill -f -9 ./kalid
fi

