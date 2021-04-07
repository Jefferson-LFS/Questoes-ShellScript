#!/bin/bash

for arg in ${*}; do
  ls ${arg} &> /dev/null &&  echo "${arg}: SIM" || echo "${arg}: NÃO"
done
