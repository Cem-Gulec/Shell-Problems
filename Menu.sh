 #!/bin/bash
 # Script to create simple menus and take action according to that selected
 # menu item
 #
 while :
  do

     echo "-------------------------------------"
     echo "             Main Menu "
     echo "-------------------------------------"
     echo "   1. Create histogram"
     echo "   2. Encryption"
     echo "   3. Delete oldest"
     echo "   4. Convert numbers"
     echo "   5. Organized files"
     echo "   6. Exit\n"
     echo -n "Enter your menu choice [1-6]: "

     read yourch
     echo -e "\n"
     case $yourch in
      1) echo -n "Please the file name that includes number data: "
         read fileName
         echo -e "\n"
         ./myprog1.sh $fileName
         echo -e "\n";;
 	   2) echo -n "Please enter string and encryption number: "
         read str 
         ./myprog2.sh `echo $str | cut -d' ' -f 1` `echo $str | cut -d' ' -f 2`
         echo -e "\n";;
      3) echo -n "Please enter optional path name (if it exists): "
         read pathName
         ./myprog3.sh $pathName;;
      4) echo -n "Please enter the file name: "
         read fileName
         ./myprog4.sh $fileName;;
      5) echo -n "Please include arguments [like -R \"c*.txt\"clear (R is optional)]: "
         read str
         arg1=`echo $str | cut -d' ' -f 1`
         arg2=`echo $str | cut -d' ' -f 2`

         ./myprog5.sh $arg1 "$arg2";;
      6) exit 0 ;;
      *) echo "Out of range!!";;
     esac
  done
