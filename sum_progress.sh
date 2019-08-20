#!/bin/bash
#Program:
#	计算系统中所有进程占用内存的大小总和
#History:
#2019/08/20	wxm	First release
#如何查看进程占用内存大小
#ps aux:显示的信息中RSS为进程占用内存的大小，为第6列内容，单位为k
#如何过滤掉第一行的RSS字符串
#sed '1d'或grep -v

#为sum赋值初始值为0
sum=0
#截取出ps aux中RSS那一列并在输出的内容中去掉 "RSS"
for i in `ps aux | awk '{print $6}' | grep -v 'RSS'`
do
    #为每个进程使用的内存求和
	sum=$[$sum+$i]
done
echo $sum
	