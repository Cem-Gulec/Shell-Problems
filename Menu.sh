 #!/bin/bash
 # Script to create simple menus and take action according to that selected
 # menu item
 #
 while :
  do
     clear
     echo -e "Please select an option: \n"
     echo "   1. Create histogram"
     echo "   2. Encryption"
     echo "   3. Delete oldest"
     echo "   4. Convert numbers"
     echo "   5. Organized files"
     echo -e "   6. Exit\n"

     read yourch
     case $yourch in
        1) echo "choice-1" ; echo ". . ."; read ;;
 	    2) echo "choice-2" ; echo ". . ."; read ;;
 	    3) echo "choice-3" ; echo ". . ."; read ;;
 	    4) echo "choice-4" ; echo ". . ."; read ;;
 	    5) echo "choice-5" ; echo ". . ."; read ;;
        6) exit 0 ;;
 	    *) echo "Out of range!!";
 	   echo "Press a key. . ." ; read ;;
     esac
  done
