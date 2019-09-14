#!/bin/bash
cd /app
while true
do
        ./linxd -datadir=/app/.linx
        echo linxd terminated, restarting in 10s
        sleep 10
done

