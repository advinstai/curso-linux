#usando operador $ para receber parametro no script
echo "$0 $1"

#funcao1

funcao1() {
  echo "teste"
}

funcao1

#Parametros
# Pra obter parâmetros utilizamos o opeador $

funcao2() {
#$1 primeiro parametro
#$2 segundo parametro

echo "bem vindo $1 você é o cliente número $2"
}

funcao2 silvio

#testando  if

var="teste"

echo  $var

if  [ $var = "teste"  ] ; then
   echo "if avalido como true : valor igual a teste"
else
   echo "if avaliado como falso: valor diferente de teste"
fi

arquivo="/tmp/arquivoteste"

if [ -e $arquivo ] ; then
  echo " arquivo $arquivo existe"
else
  echo " arquivo $arquivo nao existe"
fi

numero=4

if [ $numero -gt 5 ] ; then
  echo "maior que 5"
else
  echo  "menor que 5"
fi

# quando passamos um codigo entre  ` ` o linux executa o comando e retorna o resultado da execução
for i in `ls dir/*` ; do
  echo " iteracao laco for $i"
done


for j in `seq 0 2 12` ; do
  echo " valor de cada iteracao $j"
done

# declarando laço usando sintaxe C

for (( i=0 ; i < 50 ; i++  )) ; do
  echo $i
done
