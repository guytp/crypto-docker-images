#!/bin/bash
cd /app
while true
do
        ./potd -datadir=/app/.pot -conf=pot.conf
        echo potd terminated, restarting in 10s
        sleep 10
done

