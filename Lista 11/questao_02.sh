#!/bin/bash
#opcção  $1
#arquivo $2
case $1 in
  a)sed -i 's/[[:alpha:]]//g' $2 ;;
  b)sed -i 's/[[:digit:]]//g' $2 ;;
  c)sed -i 's/[[:punct:]]/<?>/g' $2 ;; 
esac


