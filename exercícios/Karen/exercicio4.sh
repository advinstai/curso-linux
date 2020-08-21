#4- Dado dois números inteiros, e, encontre sua soma, diferença, produto, quociente e resto da divisão.

#!/bin/bash

num1="$1"
num2="$2"

echo $(($num1+$num2))
echo $(($num1-$num2))
echo $(($num1*$num2))
echo $(($num1/$num2))
echo $(($num1%$num2))
