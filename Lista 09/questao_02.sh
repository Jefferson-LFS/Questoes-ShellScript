#!/bin/bash
read -p " Digite o nome de um arquivo:" arq
echo " "

TMP+=`cat $arq | tr '\n' ' '`

> $arq
for linha in $TMP; do
  echo $linha >> $arq
done
cat $arq 
