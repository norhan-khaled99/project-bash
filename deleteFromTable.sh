#!/bin/bash
export LC_COLLATE=C
#shopt -s extglob

 read -p "Enter Table Name: " tName
 
  if ! [ -f $tName ]
	then
	echo "Table $tName doesn't exist"
	bash ../../tableMenu.sh 
  fi

read -p "Enter the value to check: " value


if grep -q "$value" $tName; then
    
    sed -i "/$value/d" $tName
    echo "Value deleted successfully!"
else
    echo "Value not found!"
fi 
bash ../../tableMenu.sh 
