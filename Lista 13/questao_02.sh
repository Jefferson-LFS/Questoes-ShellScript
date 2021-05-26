#!/bin/bash 

. questao_01.sh

linha() {
  cat $1 | tr -s '\n' ' ' | tr -s ' ' '\n' | head -n $2 | tail -n 1
}

qtde_linhas=$(cat $1 | tr -s '\n' ' ' | tr -s ' ' '\n' | wc -l)
num_maior=$(linha $1 1)
num_menor=$(linha $1 1)

for i in $(seq 1  $qtde_linhas); do
  if [[ $(echo $(maior $num_maior $(linha $1 $i))) -gt $num_maior ]];then
    num_maior=$(echo $(maior $num_maior $(linha $1 $i)))
  fi 

  if [[ $(echo $(menor $num_menor $(linha $1 $i))) -lt $num_menor ]];then
    num_menor=$(echo $(menor $num_menor $(linha $1 $i)))
  fi 
done
 
echo Maior: $num_maior
echo Menor: $num_menor
