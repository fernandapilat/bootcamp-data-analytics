# Demais comandos

## **COMMIT**
O comando COMMIT é utilizado em sistemas de gerenciamento de banco de dados relacionais para salvar as alterações realizadas em uma transação. Ele permite que as alterações sejam confirmadas e tornadas permanentes no banco de dados, e também cria um ponto de recuperação no caso de precisar desfazer as alterações. É importante lembrar que o COMMIT só faz efeito se as alterações foram feitas dentro de uma transação, e que antes do COMMIT as alterações ainda não estão disponíveis para outras transações.

## **ROLLBACK**
O comando ROLLBACK é utilizado para desfazer uma transação no banco de dados, voltando as alterações realizadas para o estado anterior. Ele é geralmente usado quando algo dá errado durante a realização de uma transação e é necessário reverter as modificações feitas. No contexto do MySQL, o comando ROLLBACK é utilizado para desfazer as alterações realizadas na sessão atual, desde a última transação COMMIT ou desde o início da sessão, caso nenhum COMMIT tenha sido realizado. Ele é usado em conjunto com o comando BEGIN ou START TRANSACTION para iniciar uma transação e o comando COMMIT para salvar as alterações.

## **CONCAT**
O comando CONCAT é utilizado para concatenar (juntar) duas ou mais strings em uma única string. Ele é comumente utilizado em linguagens de programação, como o SQL, para unir campos de tabelas em uma única coluna. Por exemplo, no SQL, o comando CONCAT(first_name, ' ', last_name) iria unir o campo first_name com o campo last_name, separando-os com um espaço em branco. O resultado seria uma única coluna com o nome completo da pessoa.

## **COUNT**
O comando COUNT em SQL é utilizado para contar o número de linhas de um determinado conjunto de resultados. Ele é geralmente utilizado com a cláusula GROUP BY para agrupar os resultados por uma determinada coluna e contar quantas linhas existem em cada grupo.

## **SUM**
O comando SUM é utilizado em banco de dados para calcular a soma de um conjunto de valores de uma coluna específica de uma tabela. Ele é geralmente utilizado em consultas SQL para calcular a soma total de uma coluna numérica, como, por exemplo, a soma dos valores de uma coluna "preço" em uma tabela de produtos.

## **GROUP BY**
O comando GROUP BY é usado em consultas SQL para agrupar linhas de acordo com uma ou mais colunas. Ele é geralmente usado junto com funções de agregação, como COUNT, SUM e AVG, para agregar os dados agrupados. Por exemplo, você pode usar GROUP BY para agrupar todas as vendas por mês e, em seguida, usar a função SUM para calcular o total de vendas por mês. A cláusula GROUP BY é colocada após a cláusula WHERE e antes das cláusulas HAVING, SELECT e ORDER BY.

## **ORDER BY**
O comando ORDER BY é usado em uma consulta SQL (Structured Query Language) para classificar os resultados de uma consulta em ordem crescente ou decrescente. Ele é geralmente usado em conjunto com outros comandos, como SELECT e FROM, para selecionar e classificar dados específicos de uma tabela. A sintaxe básica do comando ORDER BY é:

```SQL
SELECT campos FROM tabela ORDER BY campo1 [ASC|DESC], campo2 [ASC|DESC], ...
```

Onde "campos" é a lista de campos que você deseja selecionar, "tabela" é a tabela de onde os dados serão selecionados e "campo1", "campo2", etc são os campos pelos quais os resultados serão classificados. Você pode usar ASC para classificar os resultados em ordem crescente (padrão) ou DESC para classificá-los em ordem decrescente. É possível também utilizar mais de um campo para ordenação, nesse caso, os campos serão ordenados primeiramente pelo primeiro campo e depois pelo segundo campo.

## **CASE WHEN**
O comando CASE WHEN é utilizado em consultas SQL para criar expressões condicionais. Ele é usado para avaliar uma condição e retornar um valor específico se a condição for verdadeira, e outro valor se a condição for falsa. A sintaxe geral é a seguinte:

```SQL
CASE
WHEN condition THEN result
[WHEN condition THEN result...]
[ELSE result]
END
```

Exemplo:

```SQL
SELECT column1, column2,
CASE
WHEN column1 > 100 THEN 'greater than 100'
WHEN column1 = 100 THEN 'equal to 100'
ELSE 'less than 100'
END
AS column3
FROM table_name;
```

O comando acima seleciona as colunas 1 e 2 da tabela e adiciona uma coluna 3, que é resultado da expressão condicional CASE. A expressão avalia se o valor da coluna 1 é maior que 100, se é igual a 100, ou se é menor que 100, e retorna "greater than 100", "equal to 100" ou "less than 100" respectivamente.

## **JOIN**
O comando JOIN é usado em SQL para combinar linhas de duas ou mais tabelas baseadas em uma relação entre as tabelas. Ele é usado para recuperar dados de várias tabelas como se fossem uma única tabela. Há vários tipos de JOINs, como INNER JOIN, OUTER JOIN, LEFT JOIN, RIGHT JOIN e FULL JOIN, cada um com comportamentos diferentes. O INNER JOIN retorna somente as linhas que têm correspondência nas tabelas envolvidas, enquanto o OUTER JOIN retorna todas as linhas de uma tabela e as linhas correspondentes da outra tabela.

Exemplo:

```SQL
SELECT orders.order_id, customers.name, products.product_name
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
JOIN products ON orders.product_id = products.product_id;
```

Neste exemplo, estamos selecionando dados de três tabelas: orders, customers e products. Estamos unindo as tabelas orders e customers usando a cláusula ON e especificando que a coluna customer_id na tabela orders deve ser igual à coluna customer_id na tabela customers. Da mesma forma, estamos unindo a tabela orders com a tabela products usando a cláusula ON e especificando que a coluna product_id na tabela orders deve ser igual à coluna product_id na tabela products.

## **LIMIT**
O comando LIMIT é usado em consultas SQL para limitar o número de linhas retornadas em um resultado de consulta. Ele é usado geralmente em conjunto com a cláusula ORDER BY para paginação de resultados. A sintaxe básica é:

```SQL
SELECT coluna1, coluna2
FROM tabela
LIMIT n;
```
Onde n é o número de linhas a serem retornadas. Também é possível especificar dois argumentos para o LIMIT, para especificar a partir de qual linha começar e quantas linhas retornar:

```SQL
SELECT coluna1, coluna2
FROM tabela
LIMIT inicio, quantidade;
```

## **HAVING**
O comando HAVING é usado em conjunto com o GROUP BY para filtrar resultados de uma consulta agrupada. Ele funciona de forma semelhante ao WHERE, mas é aplicado após o agrupamento dos resultados. Ele é usado para filtrar grupos de resultados baseando-se em uma condição relacionada a uma ou mais colunas agrupadas. Por exemplo, se você quiser selecionar todos os departamentos com mais de 10 funcionários, você pode usar HAVING COUNT(*) > 10.

### Exemplo com todos os comandos aprendidos em aula até aqui:

```SQL
SELECT COUNT(*) as total, SUM(valor_da_venda) as total_vendas, nome_do_vendedor
FROM vendas
JOIN vendedores ON vendas.id_vendedor = vendedores.id
GROUP BY nome_do_vendedor
HAVING total_vendas > 1000
ORDER BY total_vendas DESC
LIMIT 10;
```
