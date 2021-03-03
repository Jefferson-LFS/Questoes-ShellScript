#!/bin/bash



DATA="$(date +%Y-%m-%d)"
PASTA="/tmp/$DATA"

echo -e "Criando a pasta temporária  ${PASTA}..."
mkdir -p ${PASTA} 2> /dev/null

echo -e "Copiando os arquivos para pasta..."
cp * ${PASTA}

echo -e " Compactando os arquivos e removendo a pasta temporária  ${PASTA}..."
tar -cvzf ${PASTA}.tar.gz ${PASTA} --remove-files 2> /dev/null

echo -e "Copiando arquivo compactando para diretório atual..."
cp ${PASTA}.tar.gz ./

echo -e "Finalizado!"
