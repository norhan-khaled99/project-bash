#!/bin/bash
export LC_COLLATE=C
shopt -s extglob
read -p "Enter the  Table Name You want to delete:" table_Name
   
  if [[ -f $table_Name ]]
  then

   sed -i '2,$d' ./$table_Name
   echo "Data deleted successfully" 
  else 
    echo "Table $table_Name doesn't exist"
  fi
   bash ../../DeleteMenu.sh


