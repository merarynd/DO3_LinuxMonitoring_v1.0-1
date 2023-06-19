#! /bin/bash

get_color() {
  case $# in
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
fparam_one=default
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