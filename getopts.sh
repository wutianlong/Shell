#!/bin/bash


# 测试用例   
# sh getopts.sh   -u long       -p  123456；

# 打印出来结果如下
# user is long
# passwd is 123456


while getopts "u:p:" opt; do
  case $opt in
    u)
        use=$OPTARG  # 这个bash默认自带值， 表示：用例中的 long , 123456 等等
        echo "user is $use" ;;
    p)
        passwd=$OPTARG
        echo "passwd is $passwd" ;;
    \?)
        echo "invalid arg  $OPTARG" ;;
    ":")
        echo "No argument value for option $OPTARG" ;;
  esac
done
