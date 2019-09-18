#!/bin/bash
cd /app
while true
do
        ./lynxd -conf=/app/.lynx/lynx.conf -datadir=/app/.lynx
        echo lynxd terminated, restarting in 10s
        sleep 10
done

