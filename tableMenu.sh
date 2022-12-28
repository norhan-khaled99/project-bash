#!/bin/bash

function tablesMenu {
  echo "///////////////////////////////"
  echo "1. Create New Table"
  echo "2. List all Tables"
  echo "3. Drop Table"
  echo "4. Insert Into Table"
  echo "5. Select From Table"
  echo "6. Delete From Table"
  echo "7. Update Table"
  echo "0. Exit "
  echo "///////////////////////////////"
  echo -e "Enter Choice: \c"
  read ch
  case $ch in
    1)  bash ../../createTable.sh  ;;
    2)  ls .; tablesMenu;;
    3)  bash ../../dropTable.sh ;;
    4)  bash ../../Insert.sh ;;
    5)  clear; selectMenu ;;
    6)  bash ../../deleteFromTable.sh;;
    7)  bash ../../updateTable.sh;;
    0) clear; cd ../.. 2>>./.error.log; mainMenu ;;
    *) echo " Wrong Choice " ; tablesMenu;
  esac

}

tablesMenu
