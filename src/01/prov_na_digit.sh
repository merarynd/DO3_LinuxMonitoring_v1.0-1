#!/bin/bash

if [[ "$1" =~ [[:digit:]] ]]; then
echo "Вы ввели число. Введите текстовы параметр."
else echo $1
fi
