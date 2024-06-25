#!/bin/bash

echo "Enter the Number"

read number

if [ $number -gt 0 ]; then

echo "The Given Number $number is Positive"

elif [ $number -lt 0 ]; then

echo "The Given Number $number is Negative"

else

echo "The given number is zero"

fi
