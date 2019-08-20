#!/bin/bash
#Program:
#	设计一个脚本，监控一台机器的存活状态，当发现宕机时发一封邮件给自己
#History:
#2019/08/20	wxm	First release
#1,截取丢包率的数字
#2，当截取的值超过阈值时，使用mail.py（python脚本）发出告警
#while死循环
while :;do
sleep 30
ping -c 5 10.4.216.11 | grep errors > test
n=`cat test`
if [ ! -z "$n" ]
	then
		a=`awk -F "|%" '{print $8}' test`
		b=`echo $a | sed 's/[0-9]//g' `
		#截取$a的数字部分，判断截取后的结果是否为空，若为空则$a为纯数字
		if [ -z "$b" ]
			then
				python mail.py 398412445@qq.com "10.4.216.11 connection error" "$a percent loss"
			else
			#判断截取的内容是否为纯数字，若不是出数字则发邮件报错，若为纯数字则发邮件警告
				python mail.py 398412445@qq.com "ping test script error" "$a has access to the range"
		fi
	else
		continue
fi
done
