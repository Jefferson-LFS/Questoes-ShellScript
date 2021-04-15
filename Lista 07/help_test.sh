#!/bin/bash


for arg in $*; do
  if [ "$arg" = "logica" ]; then
    echo -e "\n ------------------------------- test logica -------------------------------------\n"  
    echo " ____________________________________________ "
    echo " |  Expressão   |        Operação           |"
    echo " |______________|___________________________|"
    echo " |      !       | inverte expressão lógica  |"
    echo " |     -a       | operador lógico AND       |"
    echo " |     -o       | operador lógico OR        |"
    echo " |__________________________________________|"
  fi

  if [ "$arg" = "aritmetica" ]; then
    
    echo -e "\n ------------------------------- test aritmetica ---------------------------------\n"
    echo " _____________________________________________________________________________"
    echo " |            Expressão             |      O resultado é verdadeiro se       |"
    echo " |__________________________________|________________________________________|"
    echo " |      inteiro_1 -eq  inteiro_2    | inteiro_1 é igual  inteiro_2           |"
    echo " |      inteiro_1 -en  inteiro_2    | inteiro_1  não é igual  inteiro_2      |"
    echo " |      inteiro_1 -ge  inteiro_2    | inteiro_1 é maior ou igual a inteiro_2 |"
    echo " |      inteiro_1 -gt  inteiro_2    | inteiro_1 é maior que inteiro_2        |"
    echo " |      inteiro_1 -le  inteiro_2    | inteiro_1 é menor ou igual a inteiro_2 |"
    echo " |      inteiro_1 -lt  inteiro_2    | inteiro_1 é menor que inteiro_2        |"
    echo " |___________________________________________________________________________|"

  fi

  if [ "$arg" = "strings" ]; then
   
    echo -e "\n ------------------------------- test strings ------------------------------------\n"
    echo " _____________________________________________________________________"
    echo " |        Expressão         |      O resultado é verdadeiro se       |"
    echo " |__________________________|________________________________________|"
    echo " |        -z string         | 	   o tamanho da string é 0           |"
    echo " |        -n string         |      o tamanho da string não é 0       |"
    echo " |  string_1  = string_2    |      string_1 é igual a inteiro_2      |"
    echo " |  string_1 != string_2    |      string_1 não é igual a inteiro_2  |"
    echo " |___________________________________________________________________|"
  fi

  if [ "$arg" = "variáveis" ]; then

    echo -e "\n ------------------------------- test variáveis ----------------------------------\n"
    echo " ________________________________________________________"
    echo " |        Expressão    |  O resultado é verdadeiro se   |"
    echo " |_____________________|________________________________|"
    echo " |        -z var       | 	      var é nula          |"
    echo " |        -n var       |       var não é nula           |"
    echo " |______________________________________________________|"
  fi

  if [ "$arg" = "arquivos" ]; then

    echo -e "\n ------------------------------- test arquivos -----------------------------------\n"
    echo " ________________________________________________________________________________________"
    echo " |        Expressão   |                   O resultado é verdadeiro se                   |"
    echo " |____________________|_________________________________________________________________|"
    echo " |  file_1 -ef file_2 | file_1 e file_2 têm os mesmos números de dispositivo e inode    |"
    echo " |  file_1 -nt file_2 | file_1 é mais recente (data de modificação) que file_2          |"
    echo " |  file_1 -ot file_2 |	file_1 é mais antigo que file_2                                 |"
    echo " |        -b file     | file existe e é bloco especial                                  |"
    echo " |        -c file     | file existe e é caractere especial                              |"
    echo " |        -d file     | file existe e é um diretório                                    |"
    echo " |        -e file     | file existe                                                     |"
    echo " |        -f file     | file existe e é um arquivo regular                              |"
    echo " |        -g file     | file existe e é definido como ID do grupo                       |"
    echo " |        -G file     | file existe e pertence ao ID do grupo efetivo                   |"
    echo " |        -h file     | file existe e é um link simbólico (o mesmo q -L )               |"
    echo " |        -k file     | file existe e tem seu bit fixo definido                         |"
    echo " |        -L file     | file existe e é um link simbólico (o mesmo q -h )               |"
    echo " |        -O file     | file existe e pertence ao ID do usuário efetivo                 |"
    echo " |        -P file     | file existe e é um pipe nomeado                                 |"
    echo " |        -r file     | file existe e a permissão de leitura é concedida                |"
    echo " |        -s file     | file existe e tem um tamanho maior que zero                     |"
    echo " |        -S file     | file existe e é um soquete                                      |"
    echo " |        -t file     | o descritor de arquivo FD é aberto em um terminal               |"
    echo " |        -u file     | file existe e seu bit t-ur-ID está definido                     |"
    echo " |        -w file     | file existe e a permissão de gravação foi concedida             |"
    echo " |        -x file     | file existe e a permissão de execução (ou pesquisa) é concedida |"
    echo " |______________________________________________________________________________________|"

  fi
done

