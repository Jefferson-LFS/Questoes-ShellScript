#!/bin/bash


for i in *; do  

  if test -d $i; then
    ls -d $i   
  fi
done

for i in *; do  
  if test -h $i; then
    ls $i
  fi

done

for i in *; do  
  if test -e $i; then
    if test -h $i; then
     $i &> /dev/null  
    elif test -x $i; then
     $i &> /dev/null  
    else
      ls $i  
    fi  
  fi

done
