#!/bin/bash 
read -p "Digite um endereço IP: " ip
echo " "

for octeto in `echo ${ip} | tr "." " "`; do
	
	oct_bin=`echo "obase=2; ibase=10; "$octeto"" | bc`
	while ((${#oct_bin}<8)); do
		left_zeros+=0
		oct_bin=$left_zeros$oct_bin
		left_zeros=""
	done
	echo "Octeto #$((num+=1)): $octeto em binário $oct_bin"

done
