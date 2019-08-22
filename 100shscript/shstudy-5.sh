#!/bin/bash
#Program:
#	试试监控本机内存和硬盘剩余空间，剩余内存小于500M、根分区剩余空间小于1000M时，发送报警邮件给root
#History:
#2019/08/22	wxm	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin
export PATH
#提取根区分剩余空间
disk_size=$(df / | awk '/\//{print $4}')

#提取内存剩余空间
mem_size=$(free | awk '/Mem/{print $4}')

while :
do
#注意内存和磁盘提取的空间大小都是以Kb为单位
if [ $disk_size -le 512000 -a $mem_size -le 1024000 ]
then
	mail -s "Warning" root <<EOF
		Insufficient resources,资源不足
EOF
fi
done

