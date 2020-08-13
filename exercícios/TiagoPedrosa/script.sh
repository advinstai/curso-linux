#!/bin/bash
#Para executar cada exercicio (funcao) separado, é preciso executar o script.sh + nome da funcao + parametros ex:
#./script.sh nomedafuncao parametro1 parametro2 parametro3 ...
exercicio01() {
  for i in $(seq 1 1 99)
  do
    if [ $((i%2)) -ne 0 ] ; then
      echo "$i"
    fi
  done
}

#primeiro parametro ($1) = nome
exercicio02() {
  echo Bem vindo: $1
}

exercicio03() {
  for i in $(seq 1 1 50)
  do
    echo $i
  done
}

#primeiro parametro ($1) = primeiro numero inteiro
#primeiro parametro ($2) = segundo numero inteiro
exercicio04() {
   soma=$(($1 + $2))
  prod=$(($1*$2))
  quo=$(($1/$2))
  res=$(($1%$2))
  if [ $1 -gt $2 ] ; then
    dif=$(($1-$2))
  else
   dif=$(($2-$1))
  fi
  echo "Soma: $soma, Diferença: $dif, Produto: $prod, Quociente: $quo, Resto: $res"
}

#primeiro parametro ($1) = letra informada
exercicio05() {
  #deixano a letra minuscula
  letra=${1,,}

  if [ $letra == "y" ] ; then
    echo "YES"
  elif [ $letra == "n" ] ; then
    echo "NÃO"
  else
    echo "Nem Y nem N"
  fi 
}

#primeiro parametro ($1) = primeiro lado do triangulo
#primeiro parametro ($2) = segundo lado do triangulo
#primeiro parametro ($3) = terceiro lado do triangulo
exercicio06() {
  if [ $1 -eq $2 ] && [ $2 -eq $3 ] && [ $1 -eq $3 ] ; then
    echo "Triângulo equilátero"
  elif [ $1 -ne $2 ] && [ $2 -ne $3 ] && [ $1 -ne $3 ] ; then
    echo "Triângulo escaleno"
  else 
    echo "Triângulo isósceles"
  fi
}

#primeiro parametro ($1) = numero
#primeiro parametro ($2) = nome do arquivo
exercicio07() {
  #verificando se já existe um arquivo criado com esse nome
  if [ ! -e $2 ] ; then
    touch $2
  fi
  for i in $(seq 1 1 $1)
  do
    echo $RANDOM >> $2
  done
}

#primeiro parametro ($1) = nome do arquivo
exercicio08() {
  #ordenando o arquivo e salvando ordenado
  sort -n -o $1 $1
  count=$(cat $1 | wc -l)
  while read line; do 
   n=$((n+$line)) 
  done < $1
  media=$(($n/$count))

  if [ $((count%2)) -eq 0 ] ; then
    valor1=$(tail -n $(($count/2)) $1 | head -1)
    valor2=$(tail -n $((($count/2)+1)) $1 | head -1)
    mediana=$((($valor1+$valor2)/2)) 
  else
    mediana=$(tail -n $((($count+1)/2)) $1 | head -1)
  fi

  while read line; do 
   val=$(($line-$media)) 
   n=$((n+($val*$val))) 
  done < $1

  dp=$(($n/$count))
  echo "Media: $media, Mediana: $mediana, Desvio padrão: $dp"
}

#primeiro parametro ($1) = movimentacao em arquivo texto
#primeiro parametro ($2) = intervalo de dias
exercicio09() {
  #Salvando os valores do texto em um array
  ArrayDespesas=(`cat $1`)

  length=${#ArrayDespesas[@]}
  dias=$2

  #Verificando se o intervalo de dias é menor que o numero de registro de movimentacao
  if [ $dias -lt $length ] ; then

    for i in $(seq 0 1 $((length-1)))
    do
      if [ $i -ge $dias ] ; then
        ini=$((i-dias))
        #Dando um slice no array para pegar as despesas do array dentro intervalo de dias informado
        #Ordenando esse novo array para aplicar a mediana
        arr2=($(echo ${ArrayDespesas[@]:$ini:$dias} | tr " " "\n" | sort -n))

        #Verificando se o intervalo é par ou impar para usar a regra correta da mediana
        if [ $((dias%2)) -eq 0 ] ; then
          #pegando as posicoes para aplicar o slice e encontrar a mediana
          index1=$(((dias/2)-1))
          index2=$((dias/2))

          valor1=${arr2[$index1]}
          valor2=${arr2[$index2]}
          mediana=$((($valor1+$valor2)/2)) 
        else
          index=$(((dias+1)/2 - 1))
          mediana=${arr2[$index]}
        fi
        #echo "Valor pra conferir ${ArrayDespesas[$i]} Calcular Mediana ${arr2[@]}, Mediana = $mediana"
        #Aplicando regra para emitir o alerta (o valor ser maior ou igual a mediana * 2)
        if [ ${ArrayDespesas[$i]} -ge $((mediana*2)) ] ; then 
          echo "Notificação do dia $((i+1)), com gasto de ${ArrayDespesas[$i]} "
        fi

      fi
     
    done
    
  else
    echo "O intervalo de dias tem que ser menor que o numero de despesas"
  fi
  
}

#primeiro parametro ($1) = primeira string
#primeiro parametro ($2) = segunda string
exercicio10() {
  text1=$1
  text2=$2
  count=0
  #Transforma a string em array e faz um for de acordo com o tamanho da string
  for i in $(seq 1 ${#text1}) ; do
    #slice no string array para pegar uma letra por vez
    char=${text1:i-1:1}
    #comparando a letra com a outra string
    if [[ $text2 == *$char* ]]; then
      count=$(($count+1))
    fi
  done 

  echo "Similaridade de $count"
}

# $1 é o nome da funcao que foi informado no console
# $2+ são os parametros
$1 $2 $3 $4

