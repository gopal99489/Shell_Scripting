#!/bin/sh

file=`cat fruit.txt | grep -E Ch?`

echo "Output:"

echo "$file"
