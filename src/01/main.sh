#!bin/bash

if [ $# -eq 1 ]; then
    bash prov_na_digit.sh $1
else 
    echo "Вы ввели $# параметров, введите пожалуста 1 параметр."
fi