#!/bin/bash

echo -e " Nome do arquivo - Nº Linhas:\n"
for i in $(find * -type f); do 
  echo -n "        $i    -     " 
  cat $i 2> /dev/null | wc -l 
  
done
