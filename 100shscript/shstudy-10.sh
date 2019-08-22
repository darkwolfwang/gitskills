#!/bin/bash
#Program:
#	依次提示用户输入3个整数，脚本根据数字大小依次排序输出3个数字
read -p "请输入一个整数：" num1
read -p "请输入一个整数：" num2
read -p "请输入一个整数：" num3
#不管谁大谁小，最后都打印echo "$num1,$num2,$num3"
#num1中为最小值，num2中为中间值，num3中为最大值
#如果输入不是这样的顺序，改变值得顺序
tmp=0
#如果num1大于num2，就把num1和num2的值对调
if [ $num1 -gt $num2 ];then
	tmp=$num1
	num1=$num2
	num2=$tmp
fi
#如果num1大于num3，就把num1和num3的值对调
if [ $num1 -gt $num3 ];then
	tmp=$num1
	num1=$num3
	num3=$tmp
fi
#如果num2大于num3，就把num2和num3的值对调
if [ $num2 -gt $num3 ];then
	tmp=$num2
	num2=$num3
	num3=$tmp
fi
echo "排序后顺序（从小到大）为：$num1,$num2,$num3"