#!/bin/bash

read -p " Digite o primeiro número intero: " num_1
read -p " Digite o segundo número intero: " num_2


(( ${num_1} < ${num_2})) && echo "${num_1}"  || echo "${num_2}"
