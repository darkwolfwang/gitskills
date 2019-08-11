#!/bin/bash
#Program:
#	Check a dirctory ,if it would not exit touch it,if it exit check that it is a file.
#History:
#2019/08/11	wxm	First release
PATH=$PATH:~/bim
export PATH
echo "Check the /root/test/logicl"
test -e /root/test/logical 
i=$?
if [ "$i" -eq "0" ]; then
	test -f /root/test/logical && rm -rf /root/test/logical && mkdir /root/test/logical || rm -rf /root/test/logical
else
	touch /root/test/logical
fi
