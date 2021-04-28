#!/bin/bash

qtde_linhas=$(cat $1 2> /dev/null | wc -l )
increment_linhas=$2

while [  $qtde_linhas -ge $increment_linhas ]; do
  read -s
  if [  $qtde_linhas -eq $increment_linhas ]; then
    cat $1 | head -n $increment_linhas | tail -n $diff_qtde_linhas_increment
    break
  else
    cat $1 | head -n $increment_linhas | tail -n $2
    diff_qtde_linhas_increment=$[$qtde_linhas - $increment_linhas]
    case ${diff_qtde_linhas_increment} in
      1)((increment_linhas+=1));;
      2)((increment_linhas+=2)) ;;
      *)((increment_linhas+=$2)) ;;
      0)break ;;
    esac
  fi	
done

