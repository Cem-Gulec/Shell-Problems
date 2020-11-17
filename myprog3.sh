
fileName=""
if [ $# -eq 0 ] 
then
	fileName=`ls -tr | head -n1`
	echo `rm -i $fileName`
else 
	fileName=`ls $1 -tr | head -n1`
	echo `rm -i ./$1/$fileName`
fi
