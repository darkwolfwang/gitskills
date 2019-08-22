#!/bin/bash
#Program:
#	编写脚本测试192.168.4.0/24 整个网段中哪些主机处于开机状态，哪些主机处于关机状态（for）
#History:
#2019/08/22	wxm	First release
export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
for i in {1..254}
do
	#每隔0.3ping一次，一共ping2次，并且以1毫秒为单元设置ping的超时时间
	ping -c 2 -i 0.3 -W 1 192.168.4.$i $>/dev/null
	if [ $? -eq 0 ];then
		echo "192.168.4.$i is up"
		else
		echo "192.168.4.$i is down"
		fi
done