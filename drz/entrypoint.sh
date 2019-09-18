#!/bin/bash
cd /app
while true
do
        ./drzd -datadir=/app/.drz -conf=/app/.drz/drz.conf
        echo Drzd terminated, restarting in 10s
        sleep 10
done

