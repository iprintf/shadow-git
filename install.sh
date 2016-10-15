#!/bin/bash

myexit()
{
    echo $1
    exit $2
}

install_dir=${1:-"/usr/local/bin"}

test ! -d "$install_dir" && myexit "指定的安装目录不存在!" 1

/bin/cp git-shadow* lib.py $install_dir/ -f || myexit "安装目录权限不足!" 2
cd $install_dir
ln -s git-shadow-clone git-sc
ln -s git-shadow-init git-si
ln -s git-shadow-push git-sp
ln -s git-shadow-pull git-sl
ln -s git-shadow-merge git-sm
ln -s git-shadow-fetch git-sf
ln -s git-shadow-remove git-sd

echo "安装成功, 请确保 ${install_dir} 安装目录已加入到PATH环境变量中!"


