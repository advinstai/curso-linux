# 10 Para duas cadeias A e B, definimos a similaridade das cadeias como sendo o comprimento do prefixo mais longo comum a ambas as cadeias. Por exemplo, a similaridade das cadeias "abc" e "abd" é 2, enquanto a similaridade das cadeias "aaa e aaab é 3.

#Crie um script bash que implementa essa função de similaridade Invente uma outra métrica de obter similaridade de strings e faça uma análise comparativa usando uma mesma entrada

#!/bin/bash

A="$1" 
B="$2"

tamanho=${#A}  #quantidade de caracteres
j=0

if [[ "$A" == "$B" ]]; then # Se a string A é igual a B, então imprimi similaridade igual a tamanho (quantidade total de caracteres) 
	echo "Similaridade ${#A}"
elif [[ "$A" != "$B" ]]; then # Caso contrário se A é diferente de B, então entra no laço for
	for i in `seq 1 "$tamanho"` ; do # laço de 1 até o tamanho da string
		c1=$(echo ${A}|cut -c ${i}) # cut -c, seleciona somente este caracter, então vou percorrer por cada caracter da string A  
		c2=$(echo ${B}|cut -c ${i}) # percorrer todos os caracteres da string b
    		if [ ${c1} == ${c2} ] # Para cada caracter, verifica-se se os mesmos são iguais 
    		then
        	echo "Caracter ($c1) igual" # Se sim, então imprimi os caracteres iguais
		((j++)) #  contador para somar cada caracter igual, para que no final tenha a o valor da similaridade das duas strings 
    		else
        	echo "Caracter ($c2) diferente de ($c1)" # Caso os caracteres sejam diferentes, então é exibido quais caracteres são diferentes
		fi
		done
echo "Similaridade = $j" # Após fazer a verificação de todos os caracteres, é imprimido a similaridade entre as duas strings.
fi
