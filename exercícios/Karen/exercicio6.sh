#6 Dados três números inteiros (representando os três lados de um triângulo, identifique se o triângulo é escaleno, isósceles ou equilátero.

#!/bin/bash

num1="$1"
num2="$2"
num3="$3"

if [ "$num1" = "$num2"  ] && [ "$num2" = "$num3" ] ; then # se num1 é igual a num2 E num2 é igual a num3 (todos os lados iguais), então imprimi na tela que o triângulo é equilátero
echo "O triângulo é equilátero"
elif [ "$num1" != "$num2"  ] && [ "$num2" != "$num3" ] ; then # caso contrário, se num1 é diferente de num2 E num2 é diferente de num3, então imprimi que o triângulo é escaleno.
echo "O triângulo é escaleno"
elif [ "$num1" = "$num2"  ] || [ "$num2" = "$num3" ] || [ "$num1" = "$num3" ] ; then # caso contrário, se num1 é igual a num2 OU num2 igual a num3 OU num1 igual a num3, então imprimi que o triângulo é isósceles 
echo "O triângulo é isósceles"
fi
