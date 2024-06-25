#!/bin/bash

#The largest_file function is designed to identify and display the largest file within a specified directory.

largest_file() {
    local dir=$1
    if [[ -d $dir ]]; then
        find "$dir" -type f -exec ls -s {} + | sort -n -r | head -n 1
    else
        echo "$dir is not a valid directory."
    fi
}

largest_file "/home/Gopal/Shell_Scripting/Shell_Scripts/functions"
