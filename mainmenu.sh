#!/bin/bash

#function mainMenu {
  echo "//////////////////////////////////"
  echo "1. Create DataBase"
  echo "2. List the DataBases "
  echo "3. Connect to the clearDataBase"
  echo "4. Drop DataBase"
  echo "5. Exit"
  echo "//////////////////////////////////"
 
   echo -e "Enter Choice: \c"
  read ch
  case $ch in
    1) bash createDB.sh ;;
    2)  listDBs;;
    3)  connectDB ;;
    4)  dropDB ;;
    5)  ;;
    *) echo " Wrong option " ;; 
  esac
#}

