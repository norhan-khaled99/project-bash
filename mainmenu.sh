#!/bin/bash
  echo -e "\e[1;36m  "
  echo "1. Create DataBase"
  echo "2. List the DataBases "
  echo "3. Connect to the clearDataBase"
  echo "4. Drop DataBase"
  echo "5. Exit"
   
   echo -e "\e[0;34m  "
   read -p "Enter Choice:"
  read ch
  case $ch in
    1) bash createDB.sh ;;
    2)  listDBs;;
    3)  connectDB ;;
    4)  dropDB ;;
    5)  ;;
    *) echo " Wrong option " ;bash mainmenu.sh; 
  esac

