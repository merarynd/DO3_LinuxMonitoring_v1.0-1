#! /bin/bash

COLOR=./color.sh
chmod +x color.sh

echo $($COLOR $1 $2) "HOSTNAME = $($COLOR $3 $4) $HOSTNAME" $($COLOR 0 0)

TIMEZONE=$(cat /etc/timezone)
DATE=$(date +"%Z %z")
echo $($COLOR $1 $2) "TIMEZONE = $($COLOR $3 $4) $TIMEZONE $DATE"$($COLOR 0)

echo $($COLOR $1 $2) "USER = $($COLOR $3 $4) $USER" $($COLOR 0 0)

OS=$(cat /etc/issue | awk '{print $1 $2 $3}')
echo $($COLOR $1 $2) "OS = $($COLOR $3 $4) $OS" $($COLOR 0 0)

echo $($COLOR $1 $2) "DATE = $($COLOR $3 $4) $(date)" $($COLOR 0 0)

UPTIME=$(uptime -p)
echo $($COLOR $1 $2) "UPTIME = $($COLOR $3 $4) $UPTIME"$($COLOR 0 0)

UPTIME_SEC=$(cat /proc/uptime | awk '{print $1}')
echo $($COLOR $1 $2) "UPTIME_SEC = $($COLOR $3 $4) $UPTIME_SEC" $($COLOR 0 0)

IP=$(hostname -I)
echo $($COLOR $1 $2) "IP = $($COLOR $3 $4) $IP" $($COLOR 0 0)

MASK=$(ifconfig | awk '/netmask/{print $4}')
echo $($COLOR $1 $2) "MASK = $($COLOR $3 $4) $MASK" $($COLOR 0 0)

GATEWAY=$(ip route | grep default)
echo $($COLOR $1 $2) "GATEWAY = $($COLOR $3 $4) $GATEWAY" $($COLOR 0 0)

RAM_TOTAL=$(free --bytes | awk '/Mem/{printf "%.3f GB", $2 / 1000000000}')
echo $($COLOR $1 $2) "RAM_TOTAL = $($COLOR $3 $4) $RAM_TOTAL" $($COLOR 0 0)

RAM_USED=$(free --bytes | awk '/Mem/{printf "%.3f GB", $3 / 1000000000}')
echo $($COLOR $1 $2) "RAM_USED = $($COLOR $3 $4) $RAM_USED" $($COLOR 0 0)

RAM_FREE=$(free --bytes | awk '/Mem/{printf "%.3f GB", $4 / 1000000000}')
echo $($COLOR $1 $2) "RAM_FREE = $($COLOR $3 $4) $RAM_FREE" $($COLOR 0 0)

SPACE_ROOT=$(df -h /home | awk '/\/$/{printf "%.2f MB", $2 * 1024}')
echo $($COLOR $1 $2) "SPACE_ROOT = $($COLOR $3 $4) $SPACE_ROOT" $($COLOR 0 0)

SPACE_ROOT_USER=$(df -h /home | awk '/\/$/{printf "%.2f MB", $3 * 1024}')
echo $($COLOR $1 $2) "SPACE_ROOT_USER = $($COLOR $3 $4) $SPACE_ROOT_USER" $($COLOR 0 0)

SPACE_ROOT_FREE=$(df -h /home | awk '/\/$/{printf "%.2f MB", $4 * 1024}')
echo $($COLOR $1 $2) "SPACE_ROOT_FREE = $($COLOR $3 $4) $SPACE_ROOT_FREE" $($COLOR 0 0)
