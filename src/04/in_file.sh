#! /bin/bash

FLAG_ONE=0
FLAG_TWO=0
FLAG_THREE=0
FLAG_FOUR=0

  param_one=$(cat config.conf | grep "column1_background=" | cut -c 20)
  param_two=$(cat config.conf | grep "column1_font_color=" | cut -c 20)
  param_three=$(cat config.conf | grep "column2_background=" | cut -c 20)
  param_four=$(cat config.conf | grep "column2_font_color=" | cut -c 20)


if [[ "$param_one" == "$param_two" || "$param_three" == "$param_four" ]]; then
       echo "Фон и цвет текста не могут совпадать. Попробуйте запустить скрипт еще раз с другими параметрами."
    else
    if ! [[ $param_one =~ [1-6] ]]; then
        param_one=1
        FLAG_ONE=1
    fi
    if ! [[ $param_two =~ [1-6] ]]; then
        param_two=1
        FLAG_TWO=1
    fi
    if ! [[ $param_three =~ [1-6] ]]; then
        param_three=1
        FLAG_THREE=1
    fi
    if ! [[ $param_four =~ [1-6] ]]; then
        param_four=1
        FLAG_FOUR=1
    fi
fi

  chmod +x param.sh
  ./param.sh $param_one $param_two $param_three $param_four

get_color() {
  case ${1} in
  1) echo "(white)" ;;
  2) echo "(red)" ;;
  3) echo "(green)" ;;
  4) echo "(blue)" ;;
  5) echo "(purple)" ;;
  6) echo "(black)" ;;
  esac
}

if [[ $FLAG_ONE = 1 ]]; then
fparam_one=default
echo "Column 1 background = $fparam_one $(get_color "$param_one")"
else echo "Column 1 background = $param_one $(get_color "$param_one")"
fi

if [[ $FLAG_TWO = 1 ]]; then
fparam_two=default
echo "Column 1 font color = $fparam_two $(get_color "$param_two")"
else echo "Column 1 font color = $param_two $(get_color "$param_two")"
fi

if [[ $FLAG_THREE = 1 ]]; then
fparam_three=default
echo "Column 2 background = $fparam_three $(get_color "$param_three")"
else echo "Column 2 background = $param_three $(get_color "$param_three")"
fi

if [[ $FLAG_FOUR = 1 ]]; then
fparam_four=default
echo "Column 2 font color = $fparam_four $(get_color "$param_four")"
else echo "Column 2 font color = $param_four $(get_color "$param_four")"
fi
