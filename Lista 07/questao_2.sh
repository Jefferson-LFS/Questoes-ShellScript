#!/bin/bash

SOMA=0

if [ -z ${x} ]; then
    read -p " Digite um número para x: " x
    ((SOMA+=${x}))
else
   ((SOMA+=${x}))
fi

if [ -z ${y} ]; then
    read -p " Digite um número para y: " y
   ((SOMA+=${y}))   
    
else
   ((SOMA+=${y}))   
fi

if [ -z ${z} ]; then
    read -p " Digite um número para z: " z
    ((SOMA+=${z})) 
else
   ((SOMA+=${z}))   
fi

echo " O resultado da soma de x, y e z é: ${SOMA}."


