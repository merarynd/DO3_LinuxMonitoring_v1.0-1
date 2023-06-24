#!/bin/bash

if [ $# -ne 1 ]; then 
echo "Требуется только один параметр!"
else
    if [ -d $1 ]; then
        arry=$1
        if [ ${arry:(-1)} != '/' ]
        then
        echo "Не верный ввод параметра! Введите в формате */!"
        else
        chmod +x output.sh
        ./output.sh
        fi
    else
     echo "No such file or directory!"
    fi
fi
