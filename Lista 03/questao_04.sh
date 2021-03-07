#!/bin/bash

COUNT_1="$(cat $1 | wc -l)"
COUNT_2="$(cat $2 | wc -l)"
COUNT_3="$(cat $3 | wc -l)"

echo  -e "\n A soma das linhas dos arquivos $1, $2 e $3 é: " $(($COUNT_1 + $COUNT_2 + $COUNT_3)) 
