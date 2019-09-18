#!/bin/bash
cd /app
while true
do
        ./kalid -conf=/app/.kali/kali.conf -datadir=/app/.kali
        echo Kali terminated, restarting in 10s
        sleep 10
done

