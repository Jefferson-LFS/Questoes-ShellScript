


Para obter os resultados das questões é preciso excutar o seginte comando no terminal para cada questão:

```
$ awk -f arquivo.awk arquivo_de_dados

Ex:

$ awk -f questao_02.awk inData_q2.txt 
```
No arquivo da questão 8 se quiser obter o resultado na ordem crescente das notas é preciso redirecionar a saída do programa para o comando `sort`:

```
$ awk -f questao_08.awk inDdata_q6_q8.txt | sort
```