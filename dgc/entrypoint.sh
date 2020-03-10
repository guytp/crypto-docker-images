#!/bin/bash
cd /app
while true
do
        ./dgcd -conf=/app/.dgc/dgc.conf -datadir=/app/.dgc
        echo dgcd terminated, restarting in 10s
        sleep 10
done

