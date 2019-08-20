#!/bin/bash
#Program:
#	统计每个ip的访问量
#History:
#2019/08/20	wxm	First release
#使用awk命令分割出每行特定一块区域的内容
#使用sort命令排序，指定使用数字排序时要在sort后加-n选项，否则使用ASCII码排序
#使用uniq命令去掉重复的行，可加-c统计重复次数
#使用sort –n将每个ip按访问量按从小到大排序，sort –nr将每个ip按访问量从大到小排序
#test.log为被统计ip的日志文件，统计出的结果被重定向到ip.txt
#awk -F ","     表示以,为分隔符
awk '{print $1}' test.log | grep -v '^$' | sort -n | uniq -c | sort -nr | tee ip.txt
