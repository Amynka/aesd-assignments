#!/bin/sh

set -e

if [ $# -eq 2 ]; then
    filesdir=$1
    searchstr=$2

    # Check filesdir
    if [ ! -d $filesdir ]; then
	echo "ERROR: Directory $filesdir does not exist!"
    else
	files=$(grep -nrl "$searchstr" $filesdir | wc -l)
	lines=$(grep -nr "$searchstr" $filesdir | wc -l)
	echo "The number of files are $files and the number of matching lines are $lines"
	exit 0
    fi
else
    echo "ERROR: Missing argument\nNumber of arguments supported 2"
    echo "Supported arguments:\n1. Directory path \n2. Search string."
    exit 1
fi
