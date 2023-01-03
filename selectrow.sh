#!/bin/bash
export LC_COLLATE=C
shopt -s extglob

read -p "Enter Table Name: " tName
 
  if ! [ -f $tName ]
	then
	echo "Table $tName doesn't exist"
	bash ../../tableMenu.sh 
  fi
 read -p "Enter value: " value
row=$(grep -n "$value" $tName | cut -d: -f1)
sed -n "${row}p" $tName
