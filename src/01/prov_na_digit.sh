#!/bin/bash

if [[ "$1" =~ [[:digit:]] ]]; then
echo "Вы ввели число. Введите текстовы параметр."
else bash param.sh $1
fi
