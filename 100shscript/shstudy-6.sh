#!/bin/bash
#Program:
#脚本生成一个100以内的随机数，提示用户猜数字，根据用户的输入，提示用户猜对了、猜小了或猜大了
#RAMDOM为系统自带的系统变量，值为0-32767的随机数
#History:
#2019/08/22	wxm	First release
export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
num=$(( ${RAMDOM} * 100 / 32767))
echo "$num"

#使用read提示用户猜数字
#使用if判断用户猜数字的大小关系：-eq(等于)，-ne(不等于)，-ge(大于等于)，-lt(小于),-le(小于等于)
while :
do
	read -p "计算机生成了一个 1-100 的随机数，请你猜一猜：" cai
	if [ $cai -eq $num ]
	then
		echo "恭喜你猜对了！！！"
		exit 1
		elif [ $cai -gt $num ]
		then
			echo "Oops,猜大了！！"
		else
			echo "Oops，猜小了!!"
		fi
done
