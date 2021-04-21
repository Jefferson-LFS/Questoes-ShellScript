#!/bin/bash
while read ip; do
  ping -c 4 $ip &> /dev/null || echo $ip >> fail_ips.txt

done < ips.txt

if  [ -e fail_ips.txt ]; then
  echo " Ips que falharam no teste:"
  cat fail_ips.txt
  
else
  echo " Todos os ips obtiveram sucesso no teste"
   
fi

rm fail_ips.txt

