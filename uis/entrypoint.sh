#!/bin/bash
cd /app
while true
do
        ./uisd -conf=/app/.uis/uis.conf -datadir=/app/.uis
        echo uisd terminated, restarting in 10s
        sleep 10
done

