#!/bin/bash

myexit()
{
    echo $1
    exit $2
}

install_dir=${1:-"/usr/local/bin"}
test ! -d "$install_dir" && myexit "指定的卸载目录不存在!" 1
cd $install_dir
rm git-* lib.py -f || myexit "指定卸载目录权限不足!" 2
echo "卸载成功!"


