#!/bin/bash 
source .env

FILE=backup`date +%Y%m%d%H%M%S`.tar.gz

function show_usage {
    echo "Usage: $0 source_dir"
    exit 1
}

if [ $# -ne 1 ]
then
    show_usage
else
    if [ -d $1 ]
    then
        DIRECTORY=$1
        tar -czf $FILE -C $DIRECTORY .
        curl -T $FILE --user $USERNAME:$PASSWORD $SERVER
        echo "Operation completed"
    else
        echo 'Source directory does not exist'
        show_usage
    fi
fi