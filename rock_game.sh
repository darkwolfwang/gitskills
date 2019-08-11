#!/bin/bash
#Program:
#	litte game of rock scissors and paper.
#History:
#2019/08/11	wxm	First release
PATH=$PATH:~/bin
export PATH
#1,告诉用户该脚本的玩法。
echo "这是剪刀石头布的小游戏，大家应该都会玩，不多说了。"
read -p "输入你的结果(scissors[0]/rock[1]/paper[2])：" user_re
sys_ru=$(( ${RANDOM} * 3 / 32767))
case $user_re in
0)
	if [ $sys_ru -eq 0 ]; then
		echo "系统出剪刀，平局"
	elif [ $sys_ru -eq 1 ]; then
		echo "系统出石头，系统赢"
	else
		echo "系统出布，你赢"
	fi;;
1)
	if [ $sys_ru -eq 0 ]; then
		echo "系统出剪刀，你赢"
	elif [ $sys_ru -eq 1 ]; then
	        echo "系统出石头，平局"
	else    
		echo "系统出布，系统赢"
	fi;; 
2)
	if [ $sys_ru -eq 0 ]; then
		echo "系统出剪刀，系统赢"
	elif [ $sys_ru -eq 1 ]; then
		echo "系统出石头,你赢"
	else
		echo "系统出布，平局"
	fi;;
*)
	echo "必须是0,1,2中的一个数字"
esac
