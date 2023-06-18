#! /bin/bash

echo -n "Сохранить данные в файл (y/n)"
read Answer
if [[ "$Answer" == "y" || "$Answer" == "Y" ]]; then
    Name="$(date +"%d_%m_%y_%H_%M_%S").status"
    ./param.sh >$Name
fi