#!/bin/bash

#Convet the give input to Upper Case Letters

to_uppercase() {
    local input=$1
    echo "${input^^}"
}

result=$(to_uppercase "hello world")
echo "Uppercase: $result"
