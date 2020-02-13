#!/bin/bash
cd /app
while true
do
        ./bstyd -conf=/app/.bsty/bsty.conf -datadir=/app/.bsty
        echo bstyd terminated, restarting in 10s
        sleep 10
done

