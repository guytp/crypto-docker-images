#!/bin/bash
cd /app
while true
do
        ./rupeed -conf=/app/.RupeeCore/Rupee.conf -datadir=/app/.RupeeCore
        echo Rupeed terminated, restarting in 10s
        sleep 10
done

