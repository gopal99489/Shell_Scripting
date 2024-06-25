#!/bin/bash


#Task 1: Batch Rename Files with Sequential Numbers


dir="/home/mike/gopal"

count=1

for file in "$dir"/*

do

extension="${file##*.}"

mv "$file" "$dir/file_$count.$extension"

count=$((count +1))

done
