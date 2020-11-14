
if [ $# -lt 1 ]
then
	echo "Please enter the file name as an argument"
	exit 1
fi

echo `sed 's/0/zero/g' $1` > $1
echo `sed 's/1/one/g' $1` > $1
echo `sed 's/2/two/g' $1` > $1
echo `sed 's/3/three/g' $1` > $1
echo `sed 's/4/four/g' $1` > $1
echo `sed 's/5/five/g' $1` > $1
echo `sed 's/6/six/g' $1` > $1
echo `sed 's/7/seven/g' $1` > $1
echo `sed 's/8/eight/g' $1` > $1
echo `sed 's/9/nine/g' $1` > $1

exit 0
