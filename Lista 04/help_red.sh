#!/bin/bash


echo -e '1°)">" Redireciona a saída padrão do comando para um arquivo, sobrescrevendo o mesmo.\n'
echo -e ' Exemplo de uso: listar o diretório atual, depois enviar para um arquivo "ls > lista_arq_dir.txt", \ndepois listar um diretório qualquer por exemplo o /tmp e enviar a saída do comando para o mesmo arquivo."ls /tmp > lista_arq_dir.txt \n"'

echo -e ' Redirecionando a listagem diretório atual para o arquivo...'

ls > lista_arq_dir.txt

echo -e ' Vizualizando o arquivo criado...\n'

cat lista_arq_dir.txt

echo -e ' \nRedirecionando  a lista de arquivos e diretórios do /tmp...'

ls /tmp > lista_arq_dir.txt

echo -e ' Vizualizando novamento o arquivo...\n'

cat lista_arq_dir.txt

echo -e ' \nVeja que só temos a listagem do diretório /tmp.\n'

echo -e '------------------------------------------------------------------------\n'

echo -e '\n2°)">>" Redireciona a saída padrão do comando para o fim de um arquivo, sem apagá-lo.\n'

echo -e ' Exemplo de uso: podemos usar o exemplo anterior, usando agora o ">>" redirecionando para outro arquivo.\n'

echo -e ' Redirecionando a listagem diretório atual para o arquivo...'

ls >>  lista_arq_dir2.txt

echo -e ' Vizualizando o arquivo criado...\n'

cat lista_arq_dir2.txt

echo -e '\n Redirecionando  a lista de arquivos e diretórios do /tmp...'

ls /tmp >> lista_arq_dir2.txt

echo -e ' Vizualizando novamento o arquivo...\n'

cat lista_arq_dir2.txt

echo -e '\n Veja que agora foi possível salvar saida do comando ls nas duas excuções /tmp.\n'

echo -e '\n----------------------------------------------------------------------------\n'

echo -e '\n3°)"2>" Equivalante ao ">", porém ele redericiona a saída padrão de erros do comando para o arquivo.\n'

echo -e ' Exemplo de uso: Tenta acessar dois diretórios que não existem com o comando cd,\n redericinoar saída do comando para um arquivo chamado erros.txt.\n'

echo -e ' Tentando acessar a o diretório "dir_1" ...'

cd dir_1 2>  erros.txt

echo -e ' Vizualizando o arquivo criado...\n'

cat erros.txt

echo -e ' \n Tentando acessar a o diretório "dir_2" ...'

cd dir_2 2>  erros.txt

echo -e ' Vizualizando o arquivo...\n'

cat erros.txt


echo -e ' \n Veja que só temos o erro da última execução do comando cd.\n'

echo -e '\n----------------------------------------------------------------------------\n'

echo -e '\n4°)"2>>" Equivalante ao "2>", porém ele redericiona a saída padrão de erros do comando ao final de arquivo.\n'

echo -e ' Exemplo de uso: Podemos usar o exemplo anterior, agora com o redericonador "2>>", salvando o erros das duas execuções do camando.\n'

echo -e ' Tentando acessar a o diretório "dir_3" ...'

cd dir_3 2>>  erros.txt

echo -e ' Vizualizando o arquivo criado...\n'

cat erros.txt

echo -e ' \n Tentando acessar a o diretório "dir_4" ...'

cd dir_4 2>>  erros.txt

echo -e ' Vizualizando o arquivo...\n'

cat erros.txt

echo -e '\n----------------------------------------------------------------------------\n'

echo -e '\n5°)"&>" Redericiona tanto a saída padrão como a de erros do comando para um arquivo, sobrescrevendo o mesmo.\n'

echo -e ' \nExemplo de uso: Tentar listar um arquivo existem  e depois acessar um diretório inexistente  \n e depois redericonador o resultado usando o "&>" para o arquivo chamado results.txt.\n'

echo -e ' Tentando listar o arquivo "/etc/hostname" ...'

 ls  /etc/hostname &> results.txt

echo -e ' Vizualizando o arquivo criado...\n'

cat results.txt

echo -e ' \n Tentando acessar a o diretório "/diretorio_exemplo1" ...'

cd /diretorio_exemplo1 &> results.txt

echo -e ' Vizualizando o arquivo...\n'

cat results.txt

echo -e '\n----------------------------------------------------------------------------\n'

echo -e '\n6°)"&>>" Equivalante ao "&>" , sendo que saída do comando é coloda no final do arquivo, sobrescrevendo o mesmo.\n'

echo -e ' \nExemplo de uso: Usando exemplo anterior agora com o redericonador "&>>" \n'

echo -e ' Tentando listar o arquivo "/etc/hostname" ...'

 ls  /etc/hostname &>> results.txt

echo -e ' Vizualizando o arquivo criado...\n'

cat results.txt

echo -e ' \n Tentando acessar a o diretório "/diretorio_exmplo2" ...'

cd /diretorio_exmplo2 &>> results.txt

echo -e ' Vizualizando o arquivo...\n'

cat results.txt

echo -e '\n----------------------------------------------------------------------------\n'
echo -e '\n7°)"<"Redericiona a entreda padrão para outra entrada\n'

echo -e ' \nExemplo de uso: redericinoar o conteúdo do arquivo /etc/passwd para entrada do comando cat \n'

echo -e ' resultado da operação "cat < /etc/passwd" ...'

 cat < /etc/passwd

echo -e '\n----------------------------------------------------------------------------\n'
echo -e '\n8°)"<<" Conhecido como here document, ele cria um arquivo em tempo real redirecionando  e mantendo a entrada aberta até que seja digitado algum caractere que finalize o arquivo \n'

echo -e ' \nExemplo de uso: Cria o arquivo test.txt fechando a entrada usando a palavra "fim" cat > test.txt << fim \n'

echo -e ' Excutando a operação "cat > test.txt << fim" ...'

cat > test.txt << fim
1
2
3
4
fim
echo -e ' Vizualizando o arquivo test.txt ...\n'

cat test.txt

echo -e '\n----------------------------------------------------------------------------\n'
echo -e '\n9°)"<<<" Conhecido como here string, ele redericiona uma string digitado no bash em vez de um arquivo.\n'

echo -e ' \nExemplo de uso: procurar o conteúdo "127.0.0.1" no arquivo /et/hosts \n'

echo -e ' Excutando a operação "grep /etc/host <<< "127.0.0.1""   ...'

grep /etc/host <<< 127.0.0.1

echo -e '\n----------------------------------------------------------------------------\n'
echo -e '\n10°)" | " Conecta a entrada de um comando para saída do outro.\n'

echo -e ' \nExemplo de uso: Pega a primeira coluna do arquivo /etc/passwd \n'

echo -e ' Excutando a operação "cat /etc/passwd | cut -d : -f 1"   ...'

cat /etc/passwd | cut -d : -f 1



