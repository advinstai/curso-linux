#8 considere um arquivo com diversos números (um em cada linha) calcule a média, desvio padrão e mediana

#!/bin/bash

cont=0;
soma=0; 

for i in $( awk '{ print $1; }' numeros.sh ) # percorrendo todas as linhas da coluna 1 ($1 referente a primeira coluna) do arquivo números.sh
   do 
     soma=$(echo $soma+$i | bc ) # soma de todos os valores  e armazena-se na variável
     ((cont++)) # contador para verificar a quantidade de números presentes no arquivo
   done
echo "Média"
echo "scale=2; $soma / $cont" | bc # scale referente a quantas casas decimais. Soma de todos os números dividido pela quantidade de números.
echo "Desvio Padrão"
awk '{sum+=$1; sumsq+=$1*$1} END {print sqrt(sumsq/NR - (sum/NR)^2)}' numeros.sh # imiprimi a raiz quadrada do valor menos a média total (NR = nº linhas)
mediana=$(sort -n numeros.sh | awk ' { a[i++]=$1; } END { x=int((i+1)/2); if (x < (i+1)/2) print (a[x-1]+a[x])/2; else print a[x-1]; }') # verifica se a quantidade total dividida por 2 é menor que a quantidade +1 dividida por 2, se sim imprimi a média dos doi valores do meio ,. Caso contrário imprimi o valor do meio.
echo "Mediana = $mediana"
