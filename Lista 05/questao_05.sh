#!/bin/bash

a1=$1

qtde_linhas=$(cat ${a1} | wc -l)

ls ${a1} &> /dev/null && ((${qtde_linhas} > 5)) || echo "BAD" 

