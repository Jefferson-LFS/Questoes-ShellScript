#!/bin/bash
echo -e " -Esse script recebe três arquivos como argumento de linha de comando.\n Imprimindo SIM caso arquivo digitado exista ou NÃO caso não exista, respectivamente.\n"
a1=$1; a2=$2; a3=$3

var_1=$(ls ${a1} &> /dev/null && echo "SIM" || echo "NÃO")
var_2=$(ls ${a2} &> /dev/null && echo "SIM" || echo "NÃO")
var_3=$(ls ${a3} &> /dev/null && echo "SIM" || echo "NÃO")

echo -e " ${var_1}  ${var_2}  ${var_3}"  
  
