#!/bin/bash

a1=$1; a2=$2; a3=$3;

echo -e " Tentando listar o arquivos ${a1}\n"

ls $a1 >> ./log.log 2>> ./erro.log 

echo -e " Tentando listar o arquivos ${a2}\n"

ls $a2 >> ./log.log  2>> ./erro.log 


echo -e " Tentando listar o arquivos ${a3}\n"

ls $a3 >> ./log.log  2>> ./erro.log 
