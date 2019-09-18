#!/bin/bash
cd /app
while true
do
        ./linxd -datadir=/app/.linx -conf=linx.conf
        echo linxd terminated, restarting in 10s
        sleep 10
done

