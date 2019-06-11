#!/bin/bash
cd /app
if ! ./bitcoin-cli -conf=/app/.aur/aur.conf -rpcclienttimeout=5 stop; then
  echo "Could not gracefully stop aur, force killing"
  pkill -f -9 ./aurd
fi

