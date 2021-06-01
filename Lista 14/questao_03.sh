#!/bin/bash

textofile=$1

while read LINHA
do

 array_names+=( "$LINHA" ) 

done < $textofile

num_char=${#array_names[0]}
index_menor=0

for ((i=0;i<${#array_names[@]};i++)); do
  if [ $num_char -gt ${#array_names[$i]} ]; then
    num_char=${#array_names[$i]}
    index_menor=$i
  fi
done

echo  -e " Nome com menor quantidade de palavras:\n ${array_names[$index_menor]}"
