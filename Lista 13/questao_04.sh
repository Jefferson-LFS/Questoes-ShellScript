#!/bin/bash

. functions.sh

opc=$1
file=$2

main() {
  case $1 in
    a) remove_upper $2 ;;
    b) remove_digit $2 ;;
    c) replace_puncts_spaces $2 ;; 
  esac
}

main $opc $file
