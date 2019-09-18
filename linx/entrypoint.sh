#!/bin/bash
cd /app
while true
do
        ./linxd -datadir=/app/.linx -conf=linx.con
        echo linxd terminated, restarting in 10s
        sleep 10
done

