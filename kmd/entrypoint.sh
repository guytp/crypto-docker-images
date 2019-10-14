#!/bin/bash
cd /app
while true
do
        ./kmdd -conf=/app/.kmd/kmd.conf -datadir=/app/.kmd
        echo kmdd terminated, restarting in 10s
        sleep 10
done

