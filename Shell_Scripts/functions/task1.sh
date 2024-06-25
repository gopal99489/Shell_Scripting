#!/bin/bash

#The backup_file function is designed to provide a simple and automated method for backing up a specified file to a designated directory.

backup_file() {

local file=$1
local backup_dir=$2

if [[ -f $file ]]; then
cp $file $backup_dir
echo "$file is backed up to $backup_dir"
else
echo "$file doesnot exist."
fi
}

backup_file "test1.txt" "./test"
