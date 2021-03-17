#!/bin/bash
echo -e " -Usando o pipe: \n"
cat a.txt | bc

echo -e " \n -Sem usar o pipe: \n"
bc < a.txt
