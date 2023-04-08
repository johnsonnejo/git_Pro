#!/bin/bash
file_dir()
{
PASSED=$1

if [ -d "${PASSED}" ] ; then
    echo "$PASSED is a directory";
else
    	if [ -f "${PASSED}" ]; then
        echo "${PASSED} is a file";
    else
        echo "${PASSED} is not valid";
        exit
    fi
fi
}
ls
read -p "Enter a value: " value
file_dir "$value"
