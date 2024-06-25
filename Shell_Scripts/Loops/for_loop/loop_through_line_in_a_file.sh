#!/bin/bash

FILE="/home/mike/Shell_Scripts/Loops/for_loop/gopal.txt"

IFS=$'\n'

for line in  $(cat "$FILE")

do

echo "Line: $line"

done
