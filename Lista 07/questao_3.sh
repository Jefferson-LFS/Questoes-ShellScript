#!/bin/bash

echo -e " DIRS\n"
for i in *; do  
  if test -d $i; then
    ls -d $i   
  fi
done


echo -e " \n FILES\n"
for i in *; do  
  if test -e $i; then
    if test -h $i; then
     $i &> /dev/null 
    else
      ls $i  
    fi  
  fi

done

echo -e "\n LINKS\n"
for i in *; do  
  if test -h $i; then
    ls $i
  fi

done

