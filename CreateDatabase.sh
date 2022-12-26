#!/bin/bash


if ! [ -d DBMS ] 
then
         #cd ~/
	 mkdir DBMS
fi
clear
echo "Welcome To DBMS"

 function mainMenu {
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
    1)  bash createDB.sh ;;
    2)  bash listDBMS.sh;;
    3)  bash connectDB.sh;;
    4)  bash dropDB.sh ;;
    5)  ;;
 *) echo " Wrong Choice " ;;
  esac
}
mainMenu









