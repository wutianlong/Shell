#!/bin/bash

# sh ./for_file_directory.sh  fileDirectory

doFile(){
    if [ -d $1 ]; then # 文件夹
        # 遍历文件夹
        for file_a in $1/*; do
            # 判断是不是文件夹
            if [ -d $file_a ]; then
                doFile $file_a
                # 判断是不是文件
            elif [ -f $file_a ]; then
                echo "single file_name =  ${file_a} "
                #  做自己的业务逻辑处理
            else
                echo "----- Warning"
            fi
        done
    fi
}

doFile $1

