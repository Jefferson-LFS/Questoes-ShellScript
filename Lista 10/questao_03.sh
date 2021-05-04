#!/bin/bash
echo -e \
' A senha deve ter pelo menos:
  - Uma letra maiúscula; 
  - Uma letra minúscula;
  - Um número. 
  Ex: "A2c".\n'

REGEX_PASSWORD='^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?:([0-9a-zA-Z])){3,}$'
read -p " Digite a senha: " password
echo $password | grep -P $REGEX_PASSWORD &> /dev/null

test=$?
while [ $test -gt 0 ]; do
	echo "Senha em válida!"
	read -p "Digite a senha novamente : " password
	echo " "
	echo $password | grep -P $REGEX_PASSWORD &> /dev/null
	test=$?
done

echo "OK!"
