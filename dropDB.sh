#!/bin/bash

export LC_COLLATE=C
shopt -s extglob

function dropDB {
  read -p "Enter Database Name: " name
  if [ -d ./DBMS/$name ]
  then
    rm -r -i ./DBMS/$name
    echo "Database Dropped Successfully"
  else
    echo "Database Not found"
  fi
  
}
dropDB
bash mainmenu.sh
