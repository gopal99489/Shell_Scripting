#!/bin/bash

echo "Enter the name of the directory you want to check/create:"

read dir_name

dir_path="$HOME/$dir_name"

if [ -d "$dir_path" ];then
echo "The directory '$dir_name' already exists in your home directory"

else

mkdir "$dir_path"
echo "The directory '$dir_name' did not exist and has been created in your home directory"

fi



