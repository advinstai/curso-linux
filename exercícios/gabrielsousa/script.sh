#!/bin/bash

echo "1 exibir apenas números naturais ímpares de 1 até 99."
echo `seq 1 2 100`
echo -------------------------------------------------------

echo "2 Escreva um script Bash que aceite como entrada um nome e exiba uma saudação: \"Bem-vindo (nome)\""
echo "Bem vindo $1"
echo -------------------------------------------------------

echo "3 Use um loop para exibir os números naturais de 1 até 50"
var=""
for ((i=1; i<= 50; i++)); do
    var+="$i "
done
echo $var
echo -------------------------------------------------------

echo "4  Dado dois números inteiros, e, encontre sua soma, diferença, produto, quociente e resto da divisão"
n1=$2
n2=$3
echo "Números: $n1 e $n2"
echo "Soma: $((n1 + n2))"
echo "Diferença: $((n1 - n2))"
echo "Produto: $((n1 * n2))"
echo "Quociente: $((n1 / n2))"
echo "Resto da divisão: $((n1 % n2))"
echo -------------------------------------------------------

echo "5 Leia em um caractere da entrada Se o caractere for 'Y' ou 'y', exiba \"YES\", se o caractere for 'N' ou 'n', exiba \"NÃO\". Se for outra coisa exiba não conheço"
echo "Insira Y ou N"
# read resposta
case $resposta in
  Y|y)
    echo "Sim"
    ;;
  N|n)
    echo "Não"
    ;;
  *)
    echo "Não conheço"
    ;;
esac
echo -------------------------------------------------------


echo "6 Dados três números inteiros (representando os três lados de um triângulo, identifique se o triângulo é escaleno, isósceles ou equilátero"
l1=2
l2=3
l3=4
echo "Lados: $l1 $l2 $l3"
case `echo "$l1 $l2 $l3" | tr " " "\n"| sort | uniq | wc -l` in
    1)
        echo "Triangulo equilatero"
        ;;
    2)
        echo "Triangulo isósceles"
        ;;
    3)
        echo  "Triangulo escaleno"
        ;;
    *)
        echo "Não é triangulo"
esac
echo -------------------------------------------------------

echo "7 receba um número N  e o nome de um arquivo gere N números aleatoriamente e salve os números (um em cada linha) no arquivo passado como parâmetro"
echo "Nome do arquivo"
# read arquivo
arquivo=tchurusbangus.tchurusmagos
echo "Numero de numeros"
# read N
N=10
shuf -i 0-100 -n $N > $arquivo
echo "Salvo!"
echo -------------------------------------------------------

echo "8 considere um arquivo com diversos números (um em cada linha) calcule a média,  desvio padrão e mediana"
# read arquivo
soma=0
soma_quad=0
amostras=`<$arquivo wc -l`
mediana=`sort -g $arquivo | sed "$((amostras/2))q;d"`
for i in `cat $arquivo`; do
    soma=$((soma+i))
    soma_quad=$((soma + i*i))
done
media=`echo "scale=3; $soma/$amostras" | bc`
variancia=`echo "scale=3; $soma_quad/$amostras" | bc`
desvio_padrao=`echo "scale=3; sqrt($variancia)" | bc`
echo "Média: $media"
echo "Desvio padrao $desvio_padrao"
echo "Mediana: $mediana"
echo -------------------------------------------------------

echo "9 Se o valor gasto por um cliente em um determinado dia for maior ou igual à 2x despesa mediana do cliente por um número final de dias, isso é considerado uma fraude potencial e um alerta é emitido."
echo
echo "Dado o número de dias finais e as despesas diárias totais de um cliente por um período de dias, localize e imprima o número de vezes que o cliente receberá uma notificação durante todos os dias."
echo 
echo "Por exemplo, d=3  e gastos = [10,20,30,40,50] Nos três primeiros dias, eles apenas coletam dados de gastos.\
No dia 4 temos gastos finais [10,20,30] A mediana é 20 e a despesa do dia é 40. 40 é maior ou igual a 2x20 potanto haverá uma notificação de possível fraude\
No dia 5 os gastos são [20,30,40] a mediana é 30x2 que é igual a 60 e o gasto é 50 que é menor que 60, portanto nao haverá notificação de fraude"
echo
echo "Faça um script bash que recebe a movimentação em um arquivo texto e o valor d como parâmetro e retorno quantas notificações o cliente receberá"
echo "Crie ao menos 3 arquivos de entrada de movimentação"

# d=$1
d=3
notificacoes=0
for ((i=$d; i<$amostras; i++)); do
    mediana_parcial=`head -n $i $arquivo | sort -g | sed "$((i/2 + i%2))q;d"`
    gasto=`<$arquivo sed "$((i+1))q;d"`
    echo `head -n $i $arquivo | sort -g` " -- " $gasto " -- " $mediana_parcial
    if [ $gasto -gt $((2*mediana_parcial)) ]; then
        notificacoes=$((notificacoes + 1))
    fi
done
echo "O cliente receberá $notificacoes notificações."
echo -------------------------------------------------------

echo "10 Para duas cadeias A e B, definimos a similaridade das cadeias como sendo o comprimento do prefixo mais longo comum a ambas as cadeias. Por exemplo, a similaridade das cadeias \"abc\" e \"abd\" é 2, enquanto a similaridade das cadeias \"aaa\" e \"aaab\" é 3."
echo "Crie um script bash que implementa essa função de similaridade"
echo "Invente uma outra métrica de obter similaridade de strings e faça uma análise comparativa usando uma mesma entrada"

A="ABACAXI"
B="abacate"
# Lowercase
A_lc=`echo $A | sed -e "s/\(.\)/\L\1/g"`
A_len=`echo $A | wc -c`

B_lc=`echo $B | sed -e "s/\(.\)/\L\1/g"`
B_len=`echo $B | wc -c`
metrica=0
for ((i=1; i<=$A_len; i++)); do
    if [[ `echo "$A_lc" | cut -c $i` == `echo "$B_lc" | cut -c $i` ]]; then
        metrica=$((metrica+1))
    fi
done
echo "$A_len $B_len $metrica"
echo "Métrica: `echo "scale=3; 2*$metrica/($A_len + $B_len)" | bc`"
echo -------------------------------------------------------
