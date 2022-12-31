#!/bin/bash

  echo "1. delete All Data from Table"
  echo "2. delete specific Data from Table"
  echo "3. back to Table Menu"
  echo "4. Exit "
  
  read -p "Enter Choice:" ch

  case $ch in
  
    1)  bash ../../DeleteALL.sh ;;
    2)  bash ../../deleteFromTable.sh ;;
    3)  bash ../../tableMenu.sh ;;
    4)  ;;
    *) echo " Wrong Choice " ;;
  esac

