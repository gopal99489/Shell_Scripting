#!/bin/bash

#The check_disk_usage function aims to provide a straightforward method for checking the disk usage of a specified directory.

check_disk_usage() {
 local dir=$1
if [ -d $dir ]; then
du -sh $dir

else 
echo "$dir is not a valid directory"
fi

}

check_disk_usage "/home/Gopal/Shell_Scripting/Shell_Scripts/functions"
