#!/bin/bash
# echo "$1"
# function is_number {
#   if [[ "$1" =~ ^[[:digit:]]+$ ]]; then
#     echo "$1"
#   else
#      echo "rrrrrrrrrr"
#   fi
# }

if [[ "$1" = *[[:digit:]]* ]]
    then
        echo "Error, please enter text!"
    else
        echo "$1"
fi