#!/bin/bash
export LC_COLLATE=C

echo -e "Enter Table Name: "
 read tName
  if ! [[ -f $tName ]]; then
    echo "Table $tableName doesn't exist "
    bash ../../tableMenu.sh
    else
  echo -e "Enter Column Number: \c"
  read colNum
   if [[ $colNum == "" ]]; then
   
       echo "column $colNum not found: \c"
       
        bash ../../tableMenu.sh
        else
  awk 'BEGIN{FS="|"}{print $'$colNum'}' $tName
  fi
  fi
