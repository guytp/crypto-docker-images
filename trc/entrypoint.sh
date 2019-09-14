#!/bin/bash
cd /app
while true
do
        ./trcd -conf=/app/.trc/trc.conf -datadir=/app/.trc
        echo trcd terminated, restarting in 10s
        sleep 10
done

