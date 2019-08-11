#!/bin/bash
#Ptogram:
#	Input your birthday, I will tell you there are how many days before it.
#History:
#2019/08/11	wxm	First release
Path=$PATH:~/bin
export PATH
echo "Plese input your birthday, I will tell you how many days before it."
read -p "Please input(yyyymmdd):" bir
#计算日期
now=$(date +%m%d)
if [ "${bir}" == "${now}" ]; then
	year=$(date +%Y)
	total_d=$(($(('date --date="$year$bir" +%s'-'date +%s'))/60/60/24))
	echo "Your birthday will be $total_d later."
else
	year=$(($(date +%Y) +1))
	total_d=$(($(($(date --date="${year}${bir}" +%s) - $(date +%s)))/60/60/24))
	echo "Your birthday will be $total_d later."
fi
