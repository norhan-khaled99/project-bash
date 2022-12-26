#!/bin/bash
function dropDB {
  echo -e "Enter Database Name: \c"
  read name
   
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
