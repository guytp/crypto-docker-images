#!/bin/bash
cd /app
while true
do
        ./xpmd -datadir=/app/.xpm -conf=xpm.conf
        echo xpmd terminated, restarting in 10s
        sleep 10
done

