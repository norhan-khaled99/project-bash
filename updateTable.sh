#!/bin/bash
export LC_COLLATE=C
shopt -s extglob
  read -p "Enter Table Name: " tName
  
   if ! [ -f $tName ]
	then
	echo "the Table $tName doesn't exist"
	bash ../../tableMenu.sh 
	break;;
  fi
  
  read -p "Enter Column name:" field
  if [[ $field == "" ]]
  then
    echo "Not Found"
    
      bash ../../tableMenu.sh
  else
    read -p "Enter Value: " val
    if [[ $val == "" ]]
    then
      echo "Value Not Found"
        bash ../../tableMenu.sh
     else 
        read -p "Enter new Value to set: "  newValue
        if [[ $newValue == "" ]]
        then
        echo "Value Not Found"
        bash ../../tableMenu.sh
        else
         sed -i 's/'$val'/'$newValue'/g' $tName 2>>./.error.log
        echo "Row Updated Successfully"
          bash ../../tableMenu.sh
      fi
    fi
  fi
