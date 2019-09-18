#!/bin/bash
cd /app
while true
do
        ./rupd -datadir=/app/.rup -conf=rup.conf
        echo Rupeed terminated, restarting in 10s
        sleep 10
done

