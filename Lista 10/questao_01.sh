#!/bin/bash

case $1 in 
  a)ls -l | grep -E '^d' ;;
  b)ls -l | grep -E '^-' | grep -E '[-wr]x' ;;
  c)ls -l | grep -E  '.*\.sh' ;;
  d) ls -l | grep -E '^l'  ;;
  e)du -hs * | grep '^0.1K' | cut -d "	" -f2  ;;
  *) echo "Opção não existe!"
esac
