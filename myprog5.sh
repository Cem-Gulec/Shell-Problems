#!/bin/bash
# There are 2 possible cases
# $1 = -R
# $1 = -R and $2 = wildcard

scrapped_files=""
wildcard=""
recursive=0

# check whether enough arguments entered
if [ $# -lt 1 ]
then
	echo "Number of arguments not sufficient."
	exit 1
fi

# check whether an option given or not
if [ "$1" == "-R" ]
then
    recursive=1
    wildcard=$2
elif [ "$1" != "-R" ]
then
    wildcard=$1
else
    echo "There is problem with arguments."
fi

# checking whether a recursive option exists
if [ "$recursive" == "1" ]  
then
    scrapped_files=`find -type f $path -name "$wildcard"` # scrap all the files matching with wildcard
    
    # loop through .txt files in directory
    for file in $scrapped_files
    do
        base_path="$(echo "${file%/*.txt}")" # remove suffix starting with "*.txt" to extract base path
        mkdir $base_path/copied 
        cp $file $base_path/copied
    done    
else 
    scrapped_files=`find -maxdepth 1 -type f $path -name "$wildcard"` 
    mkdir ./copied
    for file in $scrapped_files
    do
        cp $file ./copied
    done
fi
