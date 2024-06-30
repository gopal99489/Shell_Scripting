#!/bin/bash

#awk '{
 #   if ($1 > 102) 
  #      printf("\033[31mID: %d, Name: %s\033[0m\n", $1, $2);
   # else 
    #    printf("ID: %d, Name: %s\n", $1, $2);
#}' customer_info.txt





awk '{
    if ($1 > 100) 
        printf("\033[34mID: %d, Name: %s\033[0m\n", $1, $2);
    else 
        printf("ID: %d, Name: %s\n", $1, $2);
}' customer_info.txt
