#!/bin/bash
# Script to create simple menus and take action according to that selected
# menu item
#
while :
do
   clear
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
   clear
   case $yourch in
      1) echo -n "Please enter the file name that includes number data: "
         read fileName
         echo -e "\n"
         ./myprog1.sh $fileName;;
 	   2) echo -n "Please enter string: "
         read str 
         echo -n "Please enter the encryption number: "
         read encNumber
         ./myprog2.sh $str $encNumber;;
      3) echo -n "Please enter optional path name (if it exists): "
         read pathName
         ./myprog3.sh $pathName;;
      4) echo -n "Please enter the file name to convert number to string: "
         read fileName
         ./myprog4.sh $fileName;;
      5) echo -n "Please enter wildcard argument to copying process: "
         read wildcard
         #tmp=${wildcard#\"}   # remove prefix ending in ""
         #b=${tmp%\"}   # remove suffix starting with "_"
         echo -n "Is the copying process recursive [y/n]: "
         read recursive
         if [[ $recursive == "y" ]]
         then
            ./myprog5.sh -R $wildcard
         elif [[ $recursive == "n" ]]
         then
            ./myprog5.sh $wildcard
         else
            echo "Your optional input is invalid"
         fi
         ;;
      6) exit 0 ;;
      *) echo "Out of range!!";;
   esac
   echo -e -n "\nPlease enter key to back to main menu"
   read
done

exit 0
