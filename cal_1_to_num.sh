#!/bin/bash
#Program:
#	I will calculate "1+2+...+num",num is what you input.
#History:
#2019/08/11	wxm	First release
PATH=$PATH:~/bin
export PATH
#1,告诉使用者，该脚本的功能
echo "Please input a number, i will calculate 1 to the number."
read -p "Please input your number:" num
s=0 #这是求和的数值变量
i=0 #这是计数的
while [ "${i}" != "${num}" ]
do
	i=$(($i+1))   #每次i都会增加1
	s=$(($s+$i))  #每次都求和一次
done
echo "The result of '1+2+...+num' is ==> $s"
