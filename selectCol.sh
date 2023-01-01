function selectCol {
  read -p "Enter Table Name: " tName
  if [[ -f $tName ]]
  then
	 read -p "Enter Column Number:"  colNum
	  awk 'BEGIN{FS="|"} {if (NF >= '$colNum' && '$colNum' >0 ) print $'$colNum'; }END { if(NF < '$colNum' || '$colNum' <= 0 )" }' $tName
  else 
    echo "Table $tName doesn't exist"
  fi
  bash ../../selectmenu.sh
}

selectCol
