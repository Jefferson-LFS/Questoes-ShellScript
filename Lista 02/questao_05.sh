

#!/bin/bash
echo "\n---Substituição de variáveis----\n"

echo -e 'Para fazer a substituição da variável é preciso usar o $ antes da variável e ela deve ser declarada \nda seguinte forma NOME_DA_VARIAVEL=VALOR.\n'

a='conteudo da variável a'

echo -e '-Acessando variável "$a" :\n'
echo $a

echo -e '\n-Caso contrário só será exibido o nome da variável: \n'
echo a 

echo -e '\n---Substituição de shell----\n'

echo -e 'A substituição de shell é parecida quando usamos variáveis, sendo que utizamos $() em vez de somente um $, \nentre os parênteses é inserido um comando o qual será executado.\n'

echo -e '-Exemplo comando do whoami\n'

echo -e '-Meu usuário é:"$(whoami)":\n'
echo -e "Meu usuário é:$(whoami)\n"


echo -e 'Antes da linha ser executada, o shell executa o comando whoami, que mostra o nome do usuário. Em seguida, \no shell substitui "$(whoami)" pelo o nome do usuário na linha, retornado o resultado final.\n'


echo -e '-Também é possível armazenar o comando em uma variável.\n'
echo -e '-Exemplo: pids_ps="$(ps | cut -c 1,3-5)"\n'

pids_ps="$(ps | cut -c 1,3-5)"

echo -e "-PIDs dos processos que estão em excução: \n$pids_ps"






