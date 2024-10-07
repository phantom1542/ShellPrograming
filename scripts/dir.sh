!#/bb/bash 

echo -n "파일 이름 입력 : "
read FILENAME

if [ -d $FILENAME ] ; then 

else
     echo "Not Found."
fi 