#!/bin/bash

cat /root/bin/passwd.txt | while read USER_NAME PASSWD
do
       userdel -r $USER_NAME
done

