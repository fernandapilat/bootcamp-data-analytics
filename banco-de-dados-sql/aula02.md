# Principais comandos

## SELECT
Para consultar dados de uma tabela vamos utilizar o verbo **“SELECT”** (SELECIONE).

- A estrutura básica do comando é a seguinte: **SELECT** [alguma coisa] **FROM** [algum lugar];
- *Essa estrutura pode ser traduzida como **SELECIONE** [alguma coisa] **DE** [algum lugar];

## WHERE
Em uma instrução SQL, a cláusula WHERE especifica os critérios que os valores do campo devem cumprir para que os registros que contêm os valores sejam incluídos nos resultados da consulta. Simplificando:

> WHERE [*condição(ões)*]

Os **critérios** na cláusula WHERE geralmente são:

|Critério|Aplicabilidade | Descrição|
|--|--|--|
|"=" | coluna = "condição string" |igualdade.|
|"<>"| coluna <> condição número |diferença.|
|"<" | coluna < condição número |menor.|
|"<="| coluna <= condição número |menor ou igual.|
|">" | coluna > condição número |maior.|
|">="| coluna >= condição número |maior ou igual.|
|BETWEEN| coluna BETWEEN número AND número | entre os valores x, y num intervalo.|
|LIKE| coluna LIKE %sequência de caracteres% | como determinado valor.|
|IN| coluna IN (argumento1, argumento2)| comparar uma lista de valores.|
|OR| coluna = número OR coluna > número | considerar valor x ou valor y.|
|AND| colunax >= (colunax + (colunax * 0.4)) AND colunax = 2| considerar valor y e valor y.| 




> **Nota - Between:** Podemos usar o operador NOT antes do BETWEEN - na forma NOT BETWEEN - para retornar os registros que não atendam à condição estabelecida.

> **Nota - Like:** Esse operador permite o uso do sinal %, que substitui um ou mais caracteres no início, meio ou final do texto utilizado como parâmetro.

> **Nota 2 - Like:** Podemos usar o operador NOT antes do LIKE - na forma NOT LIKE - para retornar os registros que não atendam à condição estabelecida.
