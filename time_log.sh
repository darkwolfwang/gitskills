#!/bin/bash
#Program:
#	按日期格式生成一个文件，把磁盘的使用情况写进去。
#History：
#2019/08/20	wxm	First release
#获取当前年月日
date=`date +%Y-%m-%d`
#指定保存日志文件的路径
dir=/tmp/disklogs
#检查路径是否不存在
if [ ! -d $dir ]
	then
    	mkdir -p $dir
fi
#截取磁盘使用率信息并存入指定路径
df -h | awk -F ' *' '{OFS=" "}{print $5,$6}'> $dir/$date.log
#找到存在时间超过365天的日志文件并删除
find $dir/ -mtime +365 |xargs rm –f