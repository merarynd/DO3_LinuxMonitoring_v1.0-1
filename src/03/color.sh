#!/bin/bash

DEFAULT_COLOR='\033[0m'

LETTER_WHITE='\033[97m'
LETTER_RED='\033[31m'
LETTER_GREEN='\033[32m'
LETTER_BLUE='\033[36m'
LETTER_PURPLE='\033[35m'
LETTER_BLACK='\033[30m'

BACK_WHITE="\033[107m"
BACK_RED="\033[41m"
BACK_GREEN='\033[42m'
BACK_BLUE='\033[46m'
BACK_PURPLE='\033[45m'
BACK_BLACK='\033[40m'

case "$1" in
    0) echo -en $DEFAULT_COLOR;;
    1) echo -en $BACK_WHITE;;
    2) echo -en $BACK_RED;;
    3) echo -en $BACK_GREEN;;
    4) echo -en $BACK_BLUE;;
    5) echo -en $BACK_PURPLE;;
    6) echo -en $BACK_BLACK;;
    ![1-6]) "Параметр введен не верно. Введите от 1 до 6!";;
esac

case "$2" in
    0) echo -en $DEFAULT_COLOR;;
    1) echo -en $LETTER_WHITE;;
    2) echo -en $LETTER_RED;;
    3) echo -en $LETTER_GREEN;;
    4) echo -en $LETTER_BLUE;;
    5) echo -en $LETTER_PURPLE;;
    6) echo -en $LETTER_BLACK;;
    ![1-6]) "Параметр введен не верно. Введите от 1 до 6!";;
esac

case "$3" in
    0) echo -en $DEFAULT_COLOR;;
    1) echo -en $BACK_WHITE;;
    2) echo -en $BACK_RED;;
    3) echo -en $BACK_GREEN;;
    4) echo -en $BACK_BLUE;;
    5) echo -en $BACK_PURPLE;;
    6) echo -en $BACK_BLACK;;
    ![1-6]) "Параметр введен не верно. Введите от 1 до 6!";;
esac

case "$4" in
    0) echo -en $DEFAULT_COLOR;;
    1) echo -en $LETTER_WHITE;;
    2) echo -en $LETTER_RED;;
    3) echo -en $LETTER_GREEN;;
    4) echo -en $LETTER_BLUE;;
    5) echo -en $LETTER_PURPLE;;
    6) echo -en $LETTER_BLACK;;
    ![1-6]) "Параметр введен не верно. Введите от 1 до 6!";;
esac