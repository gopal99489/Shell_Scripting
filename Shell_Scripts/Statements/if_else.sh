#!/bin/bash
echo "Enter the number:"

read number

if [ $(($number % 2)) -eq 0 ]; then 

echo "The given number $number is Even Number"

else

echo "The given number $number is odd number"

fi
