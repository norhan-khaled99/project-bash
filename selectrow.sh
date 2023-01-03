#!/bin/bash
export LC_COLLATE=C
shopt -s extglob

 read -p "Enter Table Name: " tName
 
  if ! [ -f $tName ]
	then
	echo "Table $tName doesn't exist"
	bash ../../tableMenu.sh 
  fi

read -p "Enter the value to check: " VALUE

  
if [ -n "$(sed -n "/$VALUE/p" $tName)" ]; then
    sed -n "/$VALUE/p" $tName
     
else 
   echo "value not found"
   
fi
  
bash ../../tableMenu.sh 
