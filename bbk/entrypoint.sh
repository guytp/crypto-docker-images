#!/bin/bash
cd /app
while true
do
        ./bbkd -conf=/app/.bbk/bbk.conf -datadir=/app/.bbk
        echo bbkd terminated, restarting in 10s
        sleep 10
done

