#! /bin/bash

if [ $# -ne 0 ]; then 
  echo "Параметры вводить не требуется!"
  exit 1
else
  chmod +x in_file.sh
  ./in_file.sh
fi