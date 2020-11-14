# BUG: When there is no additional blank line on input1.txt, star of 8 does not get printed.
if [ $# -eq 0 ]
then
	echo "Please enter file name"
	exit 1
fi

for (( i=0; i < 10; i++ ))
do
occurrenceCount=0
star=""
	while read number
	do
		if [ $number -ge 0 ]
		then
			if [ $number -eq $i ]
			then
				occurrenceCount=`expr $occurrenceCount + 1`
			fi
		elif [ $number -lt 0 ]
		then
			echo "The input file includes invalid values."
			exit 1			
		fi
	done < $1
	for (( j=0; j<occurrenceCount; j++))
	do
		star+="*"
	done
	
echo "$i $star"
done

exit 0
