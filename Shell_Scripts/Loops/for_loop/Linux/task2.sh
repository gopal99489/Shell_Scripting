#!/bin/bash 

#Task 2: Compress and Archive Logs

log_dir="/home/mike/gopal"

archive_dir="/home/mike/archive"

timestamp=$(date +%Y%m%d)

mkdir -p "$archive_dir/$timestamp"

for log in "$log_dir"/*.log

do

gzip "$log"

mv "$log.gz" "$archive_dir/$timestamp"

done
