#!/bin/bash
cd /app
while true
do
        ./emc2d -conf=/app/.emc2/emc2.conf -datadir=/app/.emc2
        echo emc2d terminated, restarting in 10s
        sleep 10
done

