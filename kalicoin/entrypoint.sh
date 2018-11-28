#!/bin/bash
cd /app
while true
do
        ./kalicoind -conf=/app/.kalicoin/kalicoin.conf -datadir=/app/.kalicoin
        echo Kalicoind terminated, restarting in 10s
        sleep 10
done

