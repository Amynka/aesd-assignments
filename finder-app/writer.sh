#!/bin/sh

set -e

if [ $# -eq 2 ]; then
    writefile=$1
    writestr=$2
    mkdir -p $(dirname $writefile)
    echo "$writestr" > $writefile
    # Check if file exists
    if [ ! -e $writefile ]; then
	echo "ERROR: File $writefile could not be created."
	exit 1
    fi
    exit 0
else
    echo "ERROR: Missing argument!!\nNumber of arguments supported 2"
    echo "Supported arguments:\n1. Path where to write file \n2. Content to write."
    exit 1
fi
