#!/bin/bash

  remove_upper() {
	tr -d '[:upper:]' < $1 > /tmp/red_tr_resut.txt
  cat /tmp/red_tr_resut.txt > $1
  rm /tmp/red_tr_resut.txt
  cat $1
}

  remove_digit() {
	sed -i 's/[[:digit:]]//g' $1 
  cat $1
}

  replace_puncts_spaces() {
	awk '{gsub(/([^a-zA-Z0-9])/, "<?>" )}{ print $0 }' $1 > /tmp/red_awk_resut.txt
  cat /tmp/red_awk_resut.txt > $1
  rm /tmp/red_awk_resut.txt
  cat $1
}
