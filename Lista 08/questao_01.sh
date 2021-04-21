#!/bin/bash




while true; do
    echo -e \
  '\n----------------------- Opeções de ajudada do comando test------------------------------\n
  Digite: "logica", para obter ajuda sobre os parâmetros de lógica;
  Digite: "aritmetica", para obter ajuda sobre os parâmetros de aritmetica;
  Digite: "strings", para obter ajuda sobre os parâmetros de strings;
  Digite: "variáveis", para obter ajuda sobre os parâmetros de variáveis;
  Digite: "arquivos", para obter ajuda sobre os parâmetros de arquivos;
  Digite: "extended", para obter ajuda sobre a notação estendida.\n'

  read -p 'Digite uma opção ou "q" para sair:' opc

  case $opc in
      "logica") echo -e \
      '\n------------------------------- test logica -------------------------------------------\n 
        ____________________________________________ 
        |  Expressão   |        Operação           |
        |______________|___________________________|
        |      !       | inverte expressão lógica  |
        |     -a       | operador lógico AND       |
        |     -o       | operador lógico OR        |
        |__________________________________________|' ;;
       
       "aritmetica") echo -e \
       '\n------------------------------- test aritmetica --------------------------------------\n 
        _____________________________________________________________________________
        |             Expressão            |      O resultado é verdadeiro se       |
        |__________________________________|________________________________________|
        |      inteiro_1 -eq  inteiro_2    | inteiro_1 é igual  inteiro_2           |
        |      inteiro_1 -en  inteiro_2    | inteiro_1  não é igual  inteiro_2      |
        |      inteiro_1 -ge  inteiro_2    | inteiro_1 é maior ou igual a inteiro_2 |
        |      inteiro_1 -gt  inteiro_2    | inteiro_1 é maior que inteiro_2        |
        |      inteiro_1 -le  inteiro_2    | inteiro_1 é menor ou igual a inteiro_2 |
        |      inteiro_1 -lt  inteiro_2    | inteiro_1 é menor que inteiro_2        |
        |___________________________________________________________________________|' ;;
        
       "strings") echo -e \
       '\n ------------------------------- test strings ----------------------------------------\n
        _____________________________________________________________________
        |        Expressão         |      O resultado é verdadeiro se       |
        |__________________________|________________________________________|
        |        -z string         | 	   o tamanho da string é 0          |
        |        -n string         |      o tamanho da string não é 0       |
        |  string_1  = string_2    |      string_1 é igual a inteiro_2      |
        |  string_1 != string_2    |      string_1 não é igual a inteiro_2  |
        |___________________________________________________________________|' ;;
       "variáveis") echo -e \
       '\n ------------------------------- test variáveis -------------------------------------\n
        ________________________________________________________
        |        Expressão    |  O resultado é verdadeiro se   |
        |_____________________|________________________________|
        |        -z var       | 	      var é nula       |
        |        -n var       |       var não é nula           |
        |______________________________________________________|' ;;
       "arquivos") echo -e \
       '\n ------------------------------- test arquivos --------------------------------------\n
        ________________________________________________________________________________________
        |        Expressão   |                   O resultado é verdadeiro se                   |
        |____________________|_________________________________________________________________|
        |  file_1 -ef file_2 | file_1 e file_2 têm os mesmos números de dispositivo e inode    |
        |  file_1 -nt file_2 | file_1 é mais recente (data de modificação) que file_2          |
        |  file_1 -ot file_2 |	file_1 é mais antigo que file_2                                |
        |        -b file     | file existe e é bloco especial                                  |
        |        -c file     | file existe e é caractere especial                              |
        |        -d file     | file existe e é um diretório                                    |
        |        -e file     | file existe                                                     |
        |        -f file     | file existe e é um arquivo regular                              |
        |        -g file     | file existe e é definido como ID do grupo                       |
        |        -G file     | file existe e pertence ao ID do grupo efetivo                   |
        |        -h file     | file existe e é um link simbólico (o mesmo q -L )               |
        |        -k file     | file existe e tem seu bit fixo definido                         |
        |        -L file     | file existe e é um link simbólico (o mesmo q -h )               |
        |        -O file     | file existe e pertence ao ID do usuário efetivo                 |
        |        -P file     | file existe e é um pipe nomeado                                 |
        |        -r file     | file existe e a permissão de leitura é concedida                |
        |        -s file     | file existe e tem um tamanho maior que zero                     |
        |        -S file     | file existe e é um soquete                                      |
        |        -t file     | o descritor de arquivo FD é aberto em um terminal               |
        |        -u file     | file existe e seu bit t-ur-ID está definido                     |
        |        -w file     | file existe e a permissão de gravação foi concedida             |
        |        -x file     | file existe e a permissão de execução (ou pesquisa) é concedida |
        |______________________________________________________________________________________|' ;;
       "extended") echo -e \
	'Quando usamos colchestes [] simples ele funciona como substituto do comando test. 
        Já os colchetes duplos [[]] ele faz parte da sintaxe da lingaugem um exemplo de sua
        utlização é a substuição de aspas duplas na substuição de variáveis.
        -Usando aspas duplas:
        [ "$var_1" = "$var_2" ] || echo "não é igual"
        -Usando colchestes duplos:
        [[ $a = $b ]]  || echo "não é igual"' ;;
      "q") break ;;
      *) echo -e '\n Não reconheço a tecla digitada...\n' ;;
  esac
done

