#7 receba um número N e o nome de um arquivo gere N números aleatoriamente e salve os números (um em cada linha) no arquivo passado como parâmetro

#!/bin/bash

n="$1"
arquivo="$2"

touch $arquivo #cria arquivo com o nome guardado na variável arquivo

for i in `seq 1 "$n"` ; do #percorre todos os valores de 1 até o número selecionado
var=$RANDOM # gera os números aleatórios
echo "$var" >> $arquivo # salva os números dentro do arquivo, com o nome escolhido
done
