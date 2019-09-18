#!/bin/bash
echo "Could not gracefully stop kali, force killing"
pkill -f ./vcashd

