#!/bin/bash

for i in *; do  
  if test -x $i; then
    rm $i &> /dev/null
  fi

done
