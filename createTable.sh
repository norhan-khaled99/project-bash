#!/bin/bash
export LC_COLLATE=C
shopt -s extglob

 #read -p"Enter Database Name: " name
  #if [ -d ./DBMS/$name ]
  #then
   #cd ./DBMS/$name 
 read -p "please Enter the Name of Table that you want to create " tableName
  if ! [[ $tableName =~ ^[a-zA-Z]*$ ]]; then
        echo -e "Invalid Table name !!"
	bash ../../tablesMenu.sh
	return ;
  fi

  if [[ -f $tableName ]]; then
  
    echo "Table already exists,PLZ Enter anotherName"
    
      bash ../../tablesMenu.sh
  fi
  read -p "Number of Columns: "  colsNum
  counter=1
  sep="|"
  rSep="\n"
  pKey=""
  metaData="Field"$sep"Type"$sep"key"
  while [ $counter -le $colsNum ]
  do
    read -e "Name of Column No.$counter: " colName
    echo -e "Type of Column $colName: "
    select var in "int" "str"
    do
      case $var in
        int ) colType="int";break;;
        str ) colType="str";break;;
        * ) echo "Wrong Choice" ;;
      esac
    done
    if [[ $pKey == "" ]]; then
      echo -e "do you want it as primaryKey? "
      select var in "yes" "no"
      do
        case $var in
          yes ) pKey="PK";
          metaData+=$rSep$colName$sep$colType$sep$pKey;
          break;;
          no )
          metaData+=$rSep$colName$sep$colType$sep""
          break;;
          * ) echo "Wrong Choice" ;;
        esac
      done
    else
      metaData+=$rSep$colName$sep$colType$sep""
    fi
    if [[ $counter == $colsNum ]]; then
      temp=$temp$colName
    else
      temp=$temp$colName$sep
    fi
    ((counter++))
  done
  
  #echo $PWD
  touch .$tableName
  echo -e $metaData  >> .$tableName
  touch $tableName
  echo -e $temp >> $tableName
  if [[ $? == 0 ]]
  then
    echo "Table Created Successfully"
  # echo $PWD
     
    bash ../../tableMenu.sh
  else
    echo "please try again to create $tableName"
    fi 

  bash tablesMenu.sh
  



