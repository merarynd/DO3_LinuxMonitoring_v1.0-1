#!/bin/bash

START=$(date +%s.%N)
NUMBER=$(find $1 -type d 2>/dev/null | wc | awk '{print $1}')
echo "Total number of folders (including all nested ones) = $NUMBER"

echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
echo "$(du $1 -h 2>/dev/null | sort --reverse | head -5 | awk '{print "-",$2",", $1"b"}' | nl)"
echo "etc up to 5"

FILES=$(find $1 -type f 2>/dev/null | wc -l)
echo "Total number of files = $FILES"

echo "Number of:"

CONFIG=$(find $1 -name "*.conf" | wc -l )
echo "Configuration files (with the .conf extension) = $CONFIG"

TEXT=$(find $1 -name "*.txt" | wc -l )
echo "Text files = $TEXT"

EXEC=$(find $1 -name "*.exe")
echo "Executable files = $( $EXEC | wc -l )"

LOG=$(find $1 -name "*.log" | wc -l )
echo "Log files (with the extension .log) = $LOG"

ZIP=$(find $1 -name "*.zip" -o -name "*.tar" | wc -l )
echo "Archive files = $ZIP"

LINKS=$(find $1 -type l | wc -l )
echo "Symbolic links = $LINKS"

echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
echo "$(du $1 -ah 2>/dev/null | sort --reverse | head -10 | awk '{print "-",$2",", $1"b"}' | nl)"
echo "etc up to 10"

echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):"
echo "$(du $EXEC -ah 2>/dev/null | sort --reverse | head -10 | awk '{print "-",$2",", $1"b"}' | nl)"
echo "etc up to 10"

DATE=$(date +%s.%N)
END=$(echo "$DATE - $START" | bc)
echo "Script execution time (in seconds) = 0$END" 