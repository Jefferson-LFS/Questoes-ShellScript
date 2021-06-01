#!/bin/bash

textofile=$1
while read -r LINHA
do

  frist_name="${LINHA%% *}"
  last_name="${LINHA##* }"
  middle_names="${LINHA#$frist_name }"
  middle_names="${middle_names%$last_name}"

  for  i in $middle_names; do
    short_names+=" ${i:0:1}."
  done

  array_names+=( "$frist_name$short_names $last_name" )
  short_names=""
  
done < $textofile

echo  -e " Nomes abreviados:\n"
for ((i=0;i<${#array_names[@]};i++)); do
  echo " ${array_names[$i]}"   
done
