#!/bin/bash
cd /app
while true
do
        ./blkd -conf=/app/.blk/blk.conf -datadir=/app/.blk
        echo blkd terminated, restarting in 10s
        sleep 10
done

