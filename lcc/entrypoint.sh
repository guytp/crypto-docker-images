#!/bin/bash
cd /app
while true
do
        ./lccd -datadir=/app/.lcc -conf=lcc.conf
        echo lccd terminated, restarting in 10s
        sleep 10
done

