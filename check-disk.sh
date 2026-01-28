#!/bin/bash

THRESHOLD=80
DISK=$(df / | tail -1 | awk '{print $5}' | cut -d% -f1)

DATE=$(date "+%Y-%m-%d %H:%M:%S")

if [ "$DISK" -gt "$THRESHOLD" ]; then
  echo "$DATE WARNING Disk usage: ${DISK}%" >> disk.log
else
  echo "$DATE OK Disk usage: ${DISK}%" >> disk.log
fi