#!/bin/bash
export LC_COLLATE=C
shopt -s extglob

function selectMenu {
echo -e "\e[1;36m  "
  echo "1. Select All Columns of a Table"
  echo "2. Select Column from a Table"
  echo "3. Select row from a Table"
  echo "4. back to table menu"
  echo "5. Exit"
    echo -e "\e[0;34m   "
  read -p "Enter Choice: " ch
  case $ch in
    1) bash ../../selectAll.sh ;;
    2) bash ../../selectCol.sh ;;
    3) bash ../../selectrow.sh;;
    4) bash ../../tableMenu.sh ;;
    5) ;;
    *) echo " Wrong Choice " ; selectMenu;
  esac
}

selectMenu
