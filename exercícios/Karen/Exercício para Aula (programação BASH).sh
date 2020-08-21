for i in `seq 0 9` ; do
var=$RANDOM
echo "$var"

if [ $var -lt 1000 ] ; then #gt para maior
echo "Número menor que 1000"
else 
echo "Número maior que 1000"
fi
done
