#!/bin/bash

read -p " Digite um conjunto de números: " num

arry_num=( $num )

num_maior=${arry_num[1]} 

function maior_do_array() {
  
  for i in ${arry_num[*]}; do
  compara_num=$(echo $i '>' $num_maior | bc -l)
   if [[ $compara_num -eq 1 ]];then
     num_maior=$i
   fi
  done
  echo $num_maior
}

if [[ -n $num ]]; then
 	echo " O maior número digitado é:" $(maior_do_array)

else
	echo " Argumento não informado!"
   		
fi
