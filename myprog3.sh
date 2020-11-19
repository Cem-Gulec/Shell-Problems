#!/bin/bash

#
# The shell script finds the oldest file under the current working directory,
# when it runs without argument. 
# If it takes the path name as an argument, it finds the oldest file under given path.
#


# If the number of arguments is equal to zero, works under current directory
if [ $# -eq 0 ] 
then
	fileName=`ls -tr | head -n1`
	echo `rm -i $fileName`
elif [ $# -eq 1 ] # If the number of arguments is equal to 1, works under given path directory
then
	fileName=`ls $1 -tr | head -n1`
	echo `rm -i ./$1/$fileName`
else # If the number of argumens is greater than 1, exit program with the error code 1
	echo "There should be at most one argument"
	exit 1
fi

exit 0

