#!/bin/bash
#Program:
#	Showing who you are and where you are.
#History:
#2019/08/11	wxm	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin://usr/local/bin:/usr/local/sbin:~/bin
export PATH
echo "The user is '$(whoami)', and you are in '$(pwd)'."
