#!/bin/bash

#  sh cp_r_files.sh  ~/Downloads/test_compile/test1  ~/Downloads/test_compile/test2


SOURCE_DIR=$1
DEST_DIR=$2



for  singleFile in ${SOURCE_DIR}/*; do
    if  [[ -d $singleFile  ]] ; then         # 是文件夹则用 -R (recursive) 循环意思 
        echo " directory ------ $singleFile  == $DEST_DIR "
        cp -R  $singleFile    $DEST_DIR
    else
    	echo " file ------ ${singleFile}"
        cp $singleFile   $DEST_DIR
    fi
    
done
