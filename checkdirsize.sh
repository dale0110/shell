#!/bin/bash

echo `ls -a $1`
for file in `ls -a $1`
do
    if test -f "$1/$file"
    then
        #echo "$file 是文件"
        continue
    else
        # 检查是否为.或..目录
        if [ "$file" != "." ] && [ "$file" != ".." ]
        then
            #echo "$file 是目录"
            du -sh "$1/$file"
        fi
    fi
done
