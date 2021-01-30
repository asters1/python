#!/bin/bash

if [ -f "~/.pip/pip.conf" ];then
	echo "文件存在"
	exit 0
else
	mkdir ~/.pip
	touch ~/.pip/pip.conf
	echo "[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
[install]
trusted-host = https://pypi.tuna.tsinghua.edu.cn
" > ~/.pip/pip.conf
fi
