#!/bin/bash

  read -p "Enter the  Table Name:" table_Name
   
  if [[ -f $table_Name ]]
  then
    column -t -s '|' $table_Name
    
  else 
    echo "Table $table_Name doesn't exist"
  fi
   bash ../../selectmenu.sh

