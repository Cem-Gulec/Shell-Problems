if [ $# -lt 2 ]
then
	echo "Please enter the word and encryption number(s)"
	exit 1
fi

word=$1
encNum=$2
letters=({a..z})
result=""

if [ ${#word} -eq ${#encNum} ]
then
	for (( i=0; i<${#word}; i++)); do
		# find the ascii code of character of words
		ch=`echo "${word:$i:1}"`
		asc=`echo "${ch}" | tr -d "\n" | od -An -t uC`
		# find the ascii code of character of encryption number(s) 
		eNum=`echo "${encNum:$i:1}"`
		eNumAsc=`echo "${encNum:$i:1}" | tr -d "\n" | od -An -t uC`
		# addition word character to encryption number
		eNumAsc=`expr $eNumAsc - 48`
		asc=`expr $asc + $eNumAsc`
		if [ $asc -gt 122 ] 
		then
			asc=`expr $asc % 122`
			asc=`expr $asc + 96`
		fi
		result+=`echo "${letters[$asc-97]}"`
	done
elif [ ${#encNum} -eq 1 ]
then
	eNumAsc=`echo "${encNum}" | tr -d "\n" | od -An -t uC`
	eNumAsc=`expr $eNumAsc - 48`
	for (( i=0; i<${#word}; i++)); do
		ch=`echo "${word:$i:1}"`
		asc=`echo "${ch}" | tr -d "\n" | od -An -t uC`
		asc=`expr $asc + $eNumAsc`
		if [ $asc -gt 122 ] 
		then
			asc=`expr $asc % 122`
			asc=`expr $asc + 96`
		fi
		result+=`echo "${letters[$asc-97]}"`
	done
else
	echo "Input format is incorrect"
	exit 1
fi

echo $result

exit 0
