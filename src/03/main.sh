#! /bin/bash

if [ $# -ne 4 ]; then 
  echo "Введите 4 параметра!"
else
  for var in $1 $2 $3 $4; do
     if ! [[ $var = [1-6] ]]; then
     echo "Параметр введен не верно. Введите от 1 до 6!"
     exit 1
     fi
     if [[ $1 == $2 || $3 == $4 ]]; then
     echo "Фон и цвет текста не могут совпадать. Попробуйте запустить скрипт еще раз с другими параметрами."
     exit 1
     fi
  done
  chmod +x param.sh
  ./param.sh $1 $2 $3 $4
fi
