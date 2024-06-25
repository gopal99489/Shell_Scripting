#!/bin/sh

file=`cat fruit.txt | grep -E "fruit"`


echo "Output:"

echo "$file"
