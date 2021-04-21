!/bin/bash

while true; do 
  echo -e \
    '\n----------------------- Explorador de arquvivos------------------------------\n
    Digite: "d", para mostrar os diretórios da pasta atual;
    Digite: "f", para exibir os arquvivos da pasta atual;
    Digite: "v <arq>", para exibir o conteúdo do arquvivo;
    Digite: "cd <dir>", para mudar de diretório;
    Digite: "q" para sair.\n'

  read -p 'Digite uma opção:' opc
  echo " "
  parm=`echo $opc | cut -d " " -f2`
    
  case $opc in
    "f")for i in $(find * -type f); do 
        echo "$i" 
        done;;
    "d")for i in $(find * -type d); do 
        echo "$i" 
        done;;
    "v ${parm}") test -f ${parm} && cat ${parm} || 
    echo -e "O arquvivo ${parm} não existe" ;;
    "cd ${parm}") test -d ${parm} && cd ${parm} || 
    echo -e "O diretório ${parm} não existe";;

    "q") break ;;
    *) echo -e '\n Não reconheço a tecla digitada...\n' ;;
  esac
    
done


