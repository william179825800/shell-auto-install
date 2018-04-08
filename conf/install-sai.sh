#!/bin/bash
#下载sai使用脚本

yum -y install git
rpm -q git
if [ $? -eq 0 ];then
    echo "Git can not be installed, please install manually"
    exit 2
fi

git clone https://github.com/goodboy23/shell-auto-install.git
if [ -d shell-auto-install ];then
    echo "Download failed, please re-execute the script"
    exit 3
fi

cd shell-auto-install
chmod +x sai.sh
./sai.sh
