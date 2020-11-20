#!/bin/bash

#
# This program finds all the files whose name obeys the wildcard and copy them into a directory named
# copied. Program can take 2 arguments: a wildcard and a recursive argument "-R". 
# Wildcard is necessary argument but recursive argument can be optional.
#

wildcard=""

# Check whether satisfying amount of arguments entered
# If it does not satisfy the condition, exit program with error code 1.
if [ $# -lt 1 ] || [ $# -gt 2 ]
then
	echo "Number of arguments not satisfied."
	exit 1
fi

# Check whether an option given or not.
# If the option argument is entered, copy the files recursively.
if [ "$1" == "-R" ]
then
    wildcard=$2
    paths=`find -type d -not -path '*/\.*'`   # assign all folders name to a variable without
                                              # hidden folders.

    for path in $paths
    do
        if [[ "$path" !=  *"copied"* ]]       # check whether path string consisting of copied string
        then
            mkdir -p $path/copied 
            cp $path/$wildcard $path/copied
        fi
   done
# If the opiton argument is not entered, only work on current working directory.
elif [ "$1" != "-R" ]
then
    wildcard=$1
    mkdir -p $PWD/copied
    cp $PWD/$wildcard $PWD/copied
fi
