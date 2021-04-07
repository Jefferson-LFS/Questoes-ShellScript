#!/bin/bash
read -p " Digite o primeiro número: " a
read -p " Digite o segundo número: " b 
sum=0
for (( i=${a}; i<=${b}; i++ )); do
   ((sum+=${i}))
done 
echo ${sum}
