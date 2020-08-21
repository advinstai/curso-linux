#!/bin/bash

read -p "Quantidade de usuários?" quantidade
read -p "Nome do arquivo?" arquivo

touch $arquivo

for i in `seq 1 "$quantidade"` ; do

echo "Usuários"

read -p "ID Usuário: " id
echo "$id" >> $arquivo

read -p "Nome: " nome
echo "$nome" >> $arquivo

read -p "Idade: " idade
echo "$idade" >> $arquivo

read -p "Sexo: " sexo
echo "$sexo" >> $arquivo

echo "Produtos"

read -p "ID produto: " idprod
echo "$idprod" >> $arquivo

read -p "Valor: " valor
echo "$valor" >> $arquivo

read -p "ID compra: " nf
echo "$nf" >> $arquivo

echo "Tamanho nota fiscal"

read -p "ID compra: " idcompra
echo "$idcompra" >> $arquivo

read -p "Data produtos nota fiscal: " data
echo "$data" >> $arquivo

read -p "Quantidade produtos: " quantprod
echo "$quantprod" >> $arquivo

