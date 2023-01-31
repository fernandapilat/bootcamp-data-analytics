# Demais comandos

## **SUBQUERY**
Uma subquery é uma consulta SQL aninhada dentro de outra consulta. Ela é usada para retornar dados que serão usados como entrada em outra consulta. A subquery é executada primeiro e seus resultados são usados como parte de uma condição na consulta principal. Ela permite que você encadeie várias operações em uma única consulta e faça consultas mais complexas em sua base de dados.

```SQL
SELECT * 
FROM customers 
WHERE customer_id IN (
  SELECT customer_id 
  FROM orders 
  WHERE order_date BETWEEN '2022-01-01' AND '2022-12-31'
);
```


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

```SQL
SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name
HAVING aggregate_function(column_name) operator value;
```

