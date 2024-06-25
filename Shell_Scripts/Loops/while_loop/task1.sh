#!/bin/bash

#Monitor the disk usage of a directory and print a warning if it exceeds a specified threshold.


echo "Enter the directory to monitor:"
read directory
echo "Enter the disk usage threshold percentage (eg. 80 for 80%):"
read threshold

while true;do
usage=$(df -h "$directory" | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{print $5}' | sed 's/%//g')

if [ "$usage" -gt "$threshold" ]; then
echo "WARNING: Disk usage has exceeded $threshold%. Current usage: $usage%"

else
echo "Disk usage is within Limits. Current usage: $usage%"

fi

sleep 60

done
