#!/bin/bash
cd /app
while true
do
        ./ltzd -datadir=/app/.ltz -conf=ltz.conf
        echo ltzd terminated, restarting in 10s
        sleep 10
done

