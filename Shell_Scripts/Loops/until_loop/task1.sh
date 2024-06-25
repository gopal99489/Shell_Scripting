#!/bin/bash

TARGET_NUMBER=6
roll=0

echo "Rolling the dice to get the $TARGET_NUMBER . . ."

while true
do
    roll=$(( RANDOM % 6 + 1 ))
    echo "Rolled: $roll"

    if [ $roll -eq $TARGET_NUMBER ]; then
        echo "Success ! Rolled $TARGET_NUMBER."
        break
    else
        read -p "Press Enter to roll again..."
    fi
done
