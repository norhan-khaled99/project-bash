#!/bin/bash

export LC_COLLATE=C
shopt -s extglob

read -p "Enter Database Name:" name
   
  if [ -d ./DBMS/$name ]
  then
    rm -r -i ./DBMS/$name
    echo "Database $name Dropped Successfully"
  else
    echo "Database Not found"
  fi
 
bash mainmenu.sh
