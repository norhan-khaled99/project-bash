#!/bin/bash

export LC_COLLATE=C
shopt -s extglob
  read -p "Enter Table Name:" tName
  if [[ -f $tName ]]
  then
    rm -i $tName .$tName 
    echo "Table Deleted Successfully"
  else
    echo "Table $tName doesn't exists"
  fi
   bash ../../tableMenu.sh


 
