#!/bin/bash

if [ $# -ne 2 ]; then 
    echo "Usage: $0 source detination"
    exit 1
fi 
SRC="$1"
DST="$2"

SERVERLIST=/root/shell/server.txt
for i in $(cat $SERVERLIST)
do 
    echo "----- $i -----"
    ssh "$SRC" "$i:$DST"
    echo
done 
