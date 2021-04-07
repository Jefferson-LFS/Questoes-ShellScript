#!/bin/bash

for i in $(find * -type f); do 
 
  echo -e "      $i    -   $(cat $i 2> /dev/null | wc -l)"  >> qtde_l_arquivos

done

echo -e " Nome do arquivo - Nº Linhas:\n"
sort -nr -t- -k2 qtde_l_arquivos 

rm qtde_l_arquivos
