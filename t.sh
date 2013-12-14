#!/bin/bash
fileType="$(file "$1" | grep -o 'text')"
if [ "$fileType" == 'text' ]; then
    echo -en "\033[1m"
else
    echo -en "\033[31m"
fi
cat $1
echo -en "\033[0m"
