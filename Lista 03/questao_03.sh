#!/bin/bash

a=$1 #arg 1
b=$2 #arg 2

echo " O resultado da expressão (($a + 10)^$b) - 5 é: " $(((${a} + 10)**${b} - 5))
