#!/bin/bash

read -p " Digite o primeiro número com casas decimais: " num_d_1
read -p " Digite o segundo número com casas decimais: " num_d_2

comp=$(echo "${num_d_1} < ${num_d_2}" | bc)

(($comp == 1)) &&  echo "${num_d_1}"  ||  echo "${num_d_2}"
