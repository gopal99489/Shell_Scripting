#!/bin/bash

echo "Enter the filename:"

read filename

if [ -e "$filename" ]; then
echo "The file '$filename' is exists"

if [ -r "$filename" ]; then
echo "The file  '$filename' is readable"

else
echo "The file '$filename' is not readable"
fi

if [ -x "$filename" ]; then
echo "The file '$filename' is Executable"

else
echo "The file '$filename' is not Executable"
fi

else

echo "The file '$filename' does not exists"

fi
