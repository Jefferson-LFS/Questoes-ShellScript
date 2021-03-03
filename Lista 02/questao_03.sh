
DATA="$(date +%Y-%m-%d)"
PASTA="/tmp/$DATA"
echo -e "Criando diretório $PASTA ..."
mkdir -p ${PASTA} 2> /dev/null

echo -e "copiando todos arquivos da pasta atual $PWD para o novo diretório $PASTA ..."
cp * $PASTA

echo -e "Finalizado!"

