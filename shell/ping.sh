#!/bin/bash

START=200
END=250
NET=172.16.6

RESULT=/tmp/tmp1
> $RESULT

for i in $(seq $START $END)
do 
    ping -c 1 -W 0.5 $NET.$i >/dev/null 2>&1
    [ $? -eq 0 ] \
        && echo "[  OK  ] The $NET.$i" | tee -a $RESULT \
        || echo "[ FAIL ] The $NET.$i" >> $RESULT
done 