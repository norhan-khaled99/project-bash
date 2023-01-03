#!/bin/bash
export LC_COLLATE=C
shopt -s extglob
  read -p "Enter Table Name: " tName
  
   if ! [ -f $tName ]
	then
	echo "the Table $tName doesn't exist"
	bash ../../tableMenu.sh 
	return
  fi
  
  read -p "please enter right column number:" field
  if [[ $field == "" ]];then
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
         NR=$(awk 'BEGIN{FS="|"}{if ($'$field' == "'$val'") print NR}' $tName )
        oldValue=$(awk 'BEGIN{FS="|"}{if(NR=='$NR'){for(i=1;i<=NF;i++){if(i=='$field') print $i}}}' $tName )
        echo $oldValue
        sed -i ''$NR's/'$oldValue'/'$newValue'/g' $tName 2>>./.error.log
        echo "value updated successefully"
          bash ../../tableMenu.sh
      fi
    fi
  fi
