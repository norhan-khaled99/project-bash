#!/bin/bash
 # function createDB{
  read -p "Enter Database Name:" name

  if ! [[ $name =~ ^[a-zA-Z]*$ ]]; then
        echo -e "Invalid input"
        mainMenu
        return;


  fi

  if ! [ -d ./DBMS/$name ]
  then
  	mkdir ./DBMS/$name
       echo "you create database successfully"
  else
    echo "your database $name already exists"
  fi
  
#}
