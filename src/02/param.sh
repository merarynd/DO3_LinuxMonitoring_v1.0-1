#! /bin/bash

echo "HOSTNAME = $HOSTNAME"
echo "TIMEZONE = $(cat /etc/timezone) $(date +"%Z %z")"
echo "USER = $USER"
echo "OS = $(cat /etc/issue | awk '{print $1 $2 $3}')"
#echo "OS = $(lsb_release -a | awk '{print $3 $4}')"
echo "DATE = $(date)"
echo "UPTIME = $(uptime -p)"
echo "UPTIME_SEC = $(cat /proc/uptime | awk '{print $1}')"
echo "IP = $(hostname -I)"
echo "MASK = $(ifconfig | awk '/netmask/{print $4}')"
echo "GATEWAY = $(ip route | grep default)"
echo "RAM_TOTAL =$(free --bytes | awk '/Mem/{printf "%.3f", $2 / 1000000000}')"
echo "RAM_USED = $(free --bytes | awk '/Mem/{printf "%.3f", $3 / 1000000000}')"
echo "RAM_FREE = $(free --bytes | awk '/Mem/{printf "%.3f", $4 / 1000000000}')"
echo "SPACE_ROOT = $(df -h /home | awk '/\/$/{printf "%.2f", $2 * 1024}')"
echo "SPACE_ROOT_USED = $(df -h /home | awk '/\/$/{printf "%.2f", $3 * 1024}')"
echo "SPACE_ROOT_FREE = $(df -h /home | awk '/\/$/{printf "%.2f", $4 * 1024}')"
