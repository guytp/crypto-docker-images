#!/bin/bash
cd /app
while true
do
        ./rvnd -datadir=/app/.rvn -conf=rvn.conf
        echo rvnd terminated, restarting in 10s
        sleep 10
done

