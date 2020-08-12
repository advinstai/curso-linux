### Exercício para Aula:
* crie um diretório no /tmp com o seu nome
* crie dois arquivos nesse diretorio criado
* copie um desses arquivos para o seu home
* copie o diretório criado para o seu home
* crie um script em bash que executa os passos acima (usando nano)
* troque o modo desse script para permitir a execução (chmod a+x <nome_do_arquivo>
* execute o script ./nomedoscript.sh

### Exercício pós-aula:
* Crie um arquivo com vários nomes de cidades (misturando cidades que começam com letra maíuscula minúscula, e cidades repetidas)
* Faça um script que retorna:
  * a quantidade de repeticoes por cidades
  * a quantidade total de cidades no arquivo
  * a quantidade única de cidades no arquivo
  * a quantidade única de caracteres no arquivo

* Faça um script que classifica por ordem alfabetica decrescente as cidades por nome e salva em um arquivo chamado arq1
* Faça um script que selecione as cidades na posição 12 e 13 por ordem crescente e coloca em em um arquivo chamado arq2
* Faça um script que copia os arquivos arq1 e arq2 para /tmp e depois os apaga

### Exercício para Aula (programação BASH)

* Monte um laço que gera 10 números aleatórios (Use comando seq e variavel $RANDOM). Imprima na tela se o número gerado é menor que 1000 ou maior que 1000

### Exercício pós -aula (6-8-2020)

Exercícios

1 exibir apenas números naturais ímpares de 1 até 99.

2 Escreva um script Bash que aceite como entrada um nome e exiba uma saudação: "Bem-vindo (nome)"

3 Use um loop para exibir os números naturais de 1 até 50

4  Dado dois números inteiros, e, encontre sua soma, diferença, produto, quociente e resto da divisão.

5 Leia em um caractere da entrada Se o caractere for 'Y' ou 'y', exiba "YES”, se o caractere for 'N' ou 'n', exiba "NÃO". Se for outra coisa exiba não conheço

6 Dados três números inteiros (representando os três lados de um triângulo, identifique se o triângulo é escaleno, isósceles ou equilátero.

7 receba um número N  e o nome de um arquivo gere N números aleatoriamente e salve os números (um em cada linha) no arquivo passado como parâmetro

8 considere um arquivo com diversos números (um em cada linha) calcule a média,  desvio padrão e mediana


9
Se o valor gasto por um cliente em um determinado dia for maior ou igual à 2x despesa mediana do cliente por um número final de dias, isso é considerado uma fraude potencial e um alerta é emitido.

Dado o número de dias finais e as despesas diárias totais de um cliente por um período de dias, localize e imprima o número de vezes que o cliente receberá uma notificação durante todos os dias.

Por exemplo, d=3  e gastos = [10,20,30,40,50] Nos três primeiros dias, eles apenas coletam dados de gastos. 
No dia 4 temos gastos finais [10,20,30] A mediana é 20 e a despesa do dia é 40. 40 é maior ou igual a 2x20 portanto haverá uma notificação de possível fraude
No dia 5 os gastos são [20,30,40] a mediana é 30x2 que é igual a 60 e o gasto é 50 que é menor que 60, portanto nao haverá notificação de fraude

Faça um script bash que recebe a movimentação em um arquivo texto e o valor d como parâmetro e retorno quantas notificações o cliente receberá
Crie ao menos 3 arquivos de entrada de movimentação

10

Para duas cadeias A e B, definimos a similaridade das cadeias como sendo o comprimento do prefixo mais longo comum a ambas as cadeias. Por exemplo, a similaridade das cadeias "abc" e "abd" é 2, enquanto a similaridade das cadeias "aaa" e "aaab" é 3.

Crie um script bash que implementa essa função de similaridade
Invente uma outra métrica de obter similaridade de strings e faça uma análise comparativa usando uma mesma entrada

11  Desenvolver uma aplicação em bash

Realizar cadastros: 
usuários: id_usuario, Nome, idade, sexo
Produtos: id_produto, valor, tamanho
nota_fiscal: id_compra,id_usuario,data 
produtos_nota_fiscal: id_compra,id_produto,quantidade

Criar um módulo que calcula:
1. Média de quantidade de produtos comprados por usuário
2. Média de valor por usuário
3. Mostrar média de valor por categoria de usuário
    1. Ex1: média de valor gasto por homem x mulher
    2. Ex2: média de valor gasto por pessoas com idade entre 0 a 18 x pessoas com idade entre 18 a 99
4. Valor médio de compra por horário
