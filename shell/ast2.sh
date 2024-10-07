#!/bin/bash
####################
#     *
#    **
#   ***
#  ****
# *****
####################
MAX=5
for i in $(seq 1 $MAX)
do
    # echo $i
    NUM=$i
    BLANK_NUM=$(expr $MAX - $NUM)
    # echo "$BLANK_NUM : $NUM"
    # 왼쪽 공백 개수
    INIT_NUM=$(expr $MAX - $i)
    for k in $(seq $INIT_NUM -1 1)
    do
        echo -n ' '
    done 

    # 오른쪽 별 개수
    for j in $(seq 1 $i)
    do
        echo -n '*'
    done 
    
    #엔터(\n) 추가
    echo 
done 

