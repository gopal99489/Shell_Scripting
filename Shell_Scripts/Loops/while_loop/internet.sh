#!/bin/bash
LOG_FILE="/var/log/internet_status.log"

while true; do
  if ping -c 1 google.com &> /dev/null; then
    echo "$(date): Internet is up" >> $LOG_FILE
  else
    echo "$(date): Internet is down" >> $LOG_FILE
  fi
  sleep 60  # Check every 60 seconds
done
