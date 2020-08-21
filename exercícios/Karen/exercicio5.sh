#5 Leia em um caractere da entrada Se o caractere for Y ou y, exiba YES, se o caractere for N ou n, exiba NÃO. Se for outra coisa exiba não conheço                                                         
#!/bin/bash

var="$1"

if [ "$var" = "y" ] || [ "$var" = "Y" ] ; then # se var é igual a y ou Y, imprimi YES
echo "YES"
elif [ "$var" = "n" ] || [ "$var" = "N" ] ; then # caso contrário, se var for igual a n ou N, imprimi NÃO
echo "NÃO"
else 
echo "Não conheço" #Caso contrário, imprimi não conheço
fi
