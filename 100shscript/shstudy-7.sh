#!/bin/bash
#Program:
#	检测本机当前用户是否为超级管理员，如果是则使用yum安装vsftpd，如果不是则提示您非管理员
#History:
#2019/08/22	wxm	First release
export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
if [ $USER == "root" ]
then
	yum -y install vsftpd
else
	echo "您不是管理员，没有权限安装软件"
fi