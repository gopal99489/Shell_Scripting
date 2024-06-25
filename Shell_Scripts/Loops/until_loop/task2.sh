#!/bin/bash

#Create a script that prompts the user to enter a specific password until the correct password is provided.

Correct_Password="1"


until [ "$user_input" == "$Correct_Password" ]
do

read -s -p "Enter Password:" user_input
echo

if [ "$user_input" != "$Correct_Password" ]; then
echo "Incorrect Password try again.."

fi

done
echo "Password Correct. Access Granted.."
