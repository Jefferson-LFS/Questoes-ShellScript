#!/bin/bash
a=$1; b=$2
for (( i=${a}; i<=${b}; i++ )); do
   ((${i} % 2==0)) && echo ${i}
done


