#!/bin/bash
cd /app
while true
do
        ./xpmd -datadir=/app/.xpm
        echo xpmd terminated, restarting in 10s
        sleep 10
done

