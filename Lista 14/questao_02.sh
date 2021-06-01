#!/bin/bash
declare -A array

textofile=$1

function in_array() {
  for key in ${!array[@]};do
    if [ $1 = $key ]; then
      return 0 
    fi
  done
  return 1
  
}

while read -r LINHA
do
    
    if [ ${#array[@]} -eq 0 ]; then
      array[${LINHA:0:5}]=${LINHA:6}
   
    else
        if in_array "${LINHA:0:5}"; then
            for chave in ${!array[@]}; do
              if [ $chave = ${LINHA:0:5} ] && [ ${array[$chave]} != ${LINHA:6} ];then
                array[$chave]=$(bc <<< "${array[$chave]} + ${LINHA:6}")
                break
              fi
            done     
        else
            array[${LINHA:0:5}]=${LINHA:6}
        fi
    fi
      

done < $textofile

for chave in ${!array[@]}; do
    echo "$chave = ${array[$chave]}"
done




