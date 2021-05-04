#!/bin/bash

read -p " Digite seu e-mail: " email

REGEX_EMAIL='^([a-zA-Z0-9._])+@[0-9a-zA-Z.]+\.[a-z]{2,4}$' 

echo $email | grep -P $REGEX_EMAIL &> /dev/null
test=$?

while [ $test -gt 0 ]; do
	echo "E-mail inválido!"
	read -p "Digite seu e-mail corretamente: " email
	echo " "
	echo $email | grep -P $REGEX_EMAIL  &> /dev/null
	test=$?
done

echo "OK!"
