#!/bin/bash
#Program:
#	Remove the first list of the passwd and output it
#	like "The count line is :thecontent of the passwd "
#History:
#2019/08/11	wxm	First release
PATH=$PATH:~/bin
export PATH
echo "$(awk -F ":" '{print "The "NR" account is "$1}' /etc/passwd)"
