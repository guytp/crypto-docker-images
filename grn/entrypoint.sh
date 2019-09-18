#!/bin/bash
cd /app
while true
do
        ./grnd -datadir=/app/.grn -conf=grn.conf
        echo Infxd terminated, restarting in 10s
        sleep 10
done

