#!/bin/bash

#Objective: Create a script that accepts user input, performs basic operations, and handles exit codes.

add() {

result=$(( $1 + $2 ))
echo "Adition result: $result"
}

subtract() {
result=$(( $1 - $2 ))
echo "Subtraction result: $result"
}

Multiply() {

result=$(( $1 * $2 ))
echo "Multiply result: $result"
}

Divide() {

if [ $2 -eq 0 ]; then
echo "Error: Division by Zero !"
return 1

else
result=$(( $1 / $2 ))
echo "Division result: $result"
return 0

fi

}
echo "Enter Two Numbers:"
read num1 num2

add  $num1 $num2
subtract $num1 $num2
Multiply $num1 $num2
Divide $num1 $num2

echo "Exit code of Divide function: $?"

exit 0
