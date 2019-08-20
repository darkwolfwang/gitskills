#!/bin/bash
#Program:
#	1,批量修改.txt文件为.txt.bak
#	2,把所有.bak的文件打包压缩为123.tar.gz
#	3,批量还原文件的名字，即把增加的.bak删除
#History:
#2019/08.20	wxm	First release
#1,如何找到要被操作的文件             find /123/ -type f -name "*.txt" > /tmp/txt.list
#2,批量修改文件名                     for f in `cat /tmp/txt.list`;do mv $f $f.bak; done
#3,将被修改名称的文件打包并压缩       tar zcvf 123.tar.gz `ls *.txt.bak`
#4,将文件名还原                       for f in `cat /tmp/txt.list`;do mv $f.bak $f;done
ls /shscript/*.sh> txt.list
#xargs –i和{}配合使用可以使{}代替管道符输入的内容即前面find命令的输出
find /shscript/ -type f -name "*.sh" | xargs -i mv {} {}.bak
for f in `cat txt.list`
#将被加了.bak后缀的所有*.txt文件重定向到txt.bak.list文件中
do
	echo $f.bak
done > txt.bak.list
tar -czvf 123.tar.gz `cat txt.bak.list | xargs`
for f in `cat txt.list`
#将所有*.txt.bak文件的文件名还原为*.txt
do
	mv $f.bak $f
done
