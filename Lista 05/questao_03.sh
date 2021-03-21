#!/bin/bash

read -p " Digite o nome do primeiro arquivo: " name_arq_1
read -p " Digite o nome do segundo arquivo: " name_arq_2

num_rows_arq1=$(cat ${name_arq_1} | wc -l)
num_rows_arq2=$(cat ${name_arq_2} | wc -l)

(( ${num_rows_arq2} < ${num_rows_arq1})) && echo -e "\n ${name_arq_1}" || echo -e "\n ${name_arq_2}"



