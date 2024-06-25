#!/bin/bash

#Continuously prompt the user for numbers, add them to a running total, and exit when the user types exit.

sum=0

while true;do
echo "Enter a Number (or type exit to quit):"
read input

if [ $input == "exit" ]; then
break
fi

sum=$((sum + input))
done

echo "The total sum is : $sum"
