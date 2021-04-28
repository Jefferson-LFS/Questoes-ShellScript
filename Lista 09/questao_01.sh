#!/bin/bash

qtde_linhas=$(cat $1 2> /dev/null | wc -l )

if [ -e $1 ]; then

  if [ $2 -gt $qtde_linhas ] ; then
    echo -e " Falha: o arquivo $1 possui apenas $qtde_linhas linhas."
  else 
   cat $1 | head -n $2 | tail -n 1
  fi

else 
  echo -e " Falha: o arquivo $1 não existe."
fi

