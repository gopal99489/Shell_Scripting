#!/bin/bash

for num in {1..10}

do

if [ $num -eq 3 ]; then
	continue

fi

if [ $num -eq 8 ]; then
	break

fi

echo "Number: $num"

done
