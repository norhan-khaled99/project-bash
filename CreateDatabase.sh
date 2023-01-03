#!/bin/bash

export LC_COLLATE=C
shopt -s extglob

if ! [ -d DBMS ] 
then
         #cd ~/
	 mkdir DBMS
fi
clear
echo "Welcome To the DBMS"

 function mainMenu {
  echo "1. Create DataBase"
  echo "2. List the DataBases "
  echo "3. Connect to the clearDataBase"
  echo "4. Drop DataBase"
  echo "5. Exit"
 
 
   read -p "Enter Choice: " ch
  case $ch in
    1)  bash createDB.sh ;;
    2)  bash listDBMS.sh;;
    3)  bash connectDB.sh;;
    4)  bash dropDB.sh ;;
    5)  ;;
 *) echo " Wrong Choice " ;;
  esac
}
mainMenu








