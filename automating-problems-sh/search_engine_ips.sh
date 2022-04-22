#!/bin/bash

read -p " Digite o endereço IP inicial da range da rede: " ip_init
read -p " Digite o endereço IP final do range da rede: " ip_fin

addr_ip_in=$(grep -E "([0-9]{1,3}[\.]){3}[0-9]{1,3}" <<< $ip_init | cut -d. -f4)
addr_ip_fn=$(grep -E "([0-9]{1,3}[\.]){3}[0-9]{1,3}" <<< $ip_fin | cut -d. -f4)

addr_network=$(grep -Eo "([0-9]{1,3}[\.]){2}[0-9]{1,3}" <<< $ip_init)


for i in $(seq $addr_ip_in $addr_ip_fn); do 
  echo -e "$addr_network.${i}" >> ips_test.txt 
done

while read ip; do
  if  ping -c 1 $ip &> /dev/null; then

	  echo $ip >> pass_ips.txt
  else

	  echo $ip >> fail_ips.txt
  fi

done < ips_test.txt 

if [ -e fail_ips.txt ]; then
  	echo -e "\n\e[1m Endereços IP's que falharam no teste:\e[m\n"

	while read fail; do
		echo -e "\e[31;1m $fail\e[m"
	done <  fail_ips.txt
  rm fail_ips.txt
else
   	echo -e "\e[1m Todos os IP's obtiveram sucesso no teste.\e[m"
fi

if [ -e pass_ips.txt ]; then

   	echo -e "\n\e[1m Endereços IP's que passaram no teste:\e[m\n"
	while read pass; do
		echo -e "\e[36;1m $pass\e[m"
	done <  pass_ips.txt

 	qtde_ips=$(cat pass_ips.txt 2> /dev/null | wc -l)
	echo -e "\n\e[1m Quantidade de dispositivos ativos:\e[m" "\e[33;1m $qtde_ips \e[m"
  rm pass_ips.txt
fi
rm ips_test.txt 
