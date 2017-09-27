#!/bin/bash

# List files in a given directory whose size is larger than K bytes

path=$1
k=$2

display_usage() {
    echo "Usage: ./awesome.sh [<path>] [<file size (Bytes)>]"
    echo "Special options:"
    echo "      --help        Show this message and then exit."
}
# echo $k
if [[ $1 = "--help" ]] || [[ $# -le 1 ]] || [[ $1 = "-h" ]]
then
    display_usage
    exit 0
fi

du -s $path/* | awk '{ if ($1 >= '$k') print $2 }' | sed 's/.*\///g'
