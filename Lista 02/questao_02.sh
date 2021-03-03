#!/bin/bash
read -p "Digite o nome o caminho do primeiro diretorio? " name_dir_1

read -p "Digite o nome o caminho do segundo diretorio? " name_dir_3

read -p "Digite o nome o caminho do terceiro diretorio? " name_dir_3

echo -e "\nPrimeiro diretorio: \n"
ls ${name_dir_1}
echo -e "\nSegundo diretorio: \n"
ls ${name_dir_2}
echo -e "\nTerceiro diretorio: \n"
ls ${name_dir_3}
