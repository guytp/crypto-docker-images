#!/bin/bash
cd /app
while true
do
        ./clamd -datadir=/app/.clam -conf=clam.conf
        echo clamd terminated, restarting in 10s
        sleep 10
done

