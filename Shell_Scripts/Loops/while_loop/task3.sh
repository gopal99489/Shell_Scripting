#!/bin/bash

#Automatically create a backup of a directory at regular intervals

source_dir="/home/mike/gopal"
backup_dir="/home/mike/archive"

interval=3600

while true; do
timestamp=$(date +"%Y%m%d%H%M%S")
tar -czf "$backup_dir/backup_$timestamp.tar.gz" "$source_dir"

echo "backup created at $timestamp"

sleep $interval

done 
