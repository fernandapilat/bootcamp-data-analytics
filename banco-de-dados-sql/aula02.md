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

## INSERT
O comando INSERT é usado para inserir novos dados em uma tabela de um banco de dados. Ele é usado para adicionar novas linhas de dados à tabela. A sintaxe geral do comando é a seguinte:

```sql
INSERT INTO tabela_nome (coluna1, coluna2, coluna3, ...)
VALUES (valor1, valor2, valor3, ...);
```

Onde "tabela_nome" é o nome da tabela onde os dados serão inseridos, e "coluna1, coluna2, coluna3" são as colunas da tabela que serão preenchidas com os valores "valor1, valor2, valor3".

Exemplo:

```sql
INSERT INTO clientes (nome, endereco, cidade)
VALUES ('João Silva', 'Rua das Flores, 123', 'São Paulo');
```

Este exemplo insere uma nova linha na tabela "clientes", com os valores "João Silva" para a coluna "nome", "Rua das Flores, 123" para a coluna "endereco", e "São Paulo" para a coluna "cidade".

## DELETE
O comando DELETE é usado para excluir dados de uma tabela de um banco de dados. Ele é usado para remover linhas de dados da tabela. A sintaxe geral do comando é a seguinte:

```sql
DELETE FROM tabela_nome WHERE condicao;
```

Onde "tabela_nome" é o nome da tabela de onde os dados serão excluídos, e "condição" é uma expressão lógica que especifica quais linhas serão excluídas. Se não houver uma condição especificada, todas as linhas da tabela serão excluídas.

Exemplo: 

```sql
DELETE FROM clientes WHERE id = 10;
```

Este exemplo excluirá a linha na tabela "clientes" onde o valor da coluna "id" é igual a 10.

É importante ter cuidado ao usar o comando DELETE, pois ele excluirá permanentemente os dados da tabela e não poderá ser desfeito.

## UPDATE
O comando UPDATE é usado para atualizar dados existentes em uma tabela de um banco de dados. Ele é usado para modificar os valores de uma ou mais colunas de uma ou mais linhas da tabela. A sintaxe geral do comando é a seguinte:

```sql
UPDATE tabela_nome SET coluna1 = novo_valor1, coluna2 = novo_valor2, ... WHERE condicao;
```

O comando UPDATE é usado para atualizar dados existentes em uma tabela de um banco de dados. Ele é usado para modificar os valores de uma ou mais colunas de uma ou mais linhas da tabela. A sintaxe geral do comando é a seguinte:

Copy code
UPDATE tabela_nome SET coluna1 = novo_valor1, coluna2 = novo_valor2, ... WHERE condicao;
Onde "tabela_nome" é o nome da tabela onde os dados serão atualizados, "coluna1, coluna2, ..." são as colunas da tabela que serão modificadas, "novo_valor1, novo_valor2, ..." são os novos valores para as colunas especificadas e "condição" é uma expressão lógica que especifica quais linhas serão atualizadas. Se não houver uma condição especificada, todas as linhas da tabela serão atualizadas.

Exemplo:

```sql
UPDATE clientes SET endereco = 'Rua das Orquídeas, 321' WHERE id = 10;
```

Este exemplo atualizará a coluna "endereco" da tabela "clientes" para o novo valor "Rua das Orquídeas, 321" onde o valor da coluna "id" é igual a 10.

O comando SET é usado junto com o comando UPDATE para especificar as colunas e valores que serão atualizados.

## CREATE TABLE

A função CREATE TABLE é usada para criar uma nova tabela em um banco de dados. Ela é usada para especificar o nome da tabela e as colunas, bem como os tipos de dados e restrições de cada coluna. A sintaxe geral da função é a seguinte:

```sql
CREATE TABLE tabela_nome (
coluna1 tipo_de_dado1 restricoes,
coluna2 tipo_de_dado2 restricoes,
...
);
```

Onde "tabela_nome" é o nome da tabela a ser criada, "coluna1, coluna2, ..." são os nomes das colunas da tabela, "tipo_de_dado1, tipo_de_dado2, ..." são os tipos de dados das colunas (como inteiro, texto, data, etc.) e "restrições" são restrições adicionais, como NOT NULL ou PRIMARY KEY.

Exemplo:

```sql
CREATE TABLE clientes (
id INT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
endereco VARCHAR(255) NOT NULL,
cidade VARCHAR(255) NOT NULL
);
```

Este exemplo cria uma tabela chamada "clientes" com as colunas "id", "nome", "endereco" e "cidade". A coluna "id" é do tipo inteiro e é definida como a chave primária, as colunas "nome", "endereco" e "cidade" são do tipo varchar com tamanho máximo de 255 caracteres e é definida como NOT NULL, o que significa que não pode ser nulo.

Outros tipos de dados que podem ser especificados ao criar uma tabela: 

- CHAR: Um tipo de caractere fixo de comprimento.
- VARCHAR: Um tipo de caractere variável de comprimento.
- INT: Um tipo inteiro.
- BIGINT: Um tipo inteiro de maior capacidade.
- FLOAT: Um tipo flutuante.
- DOUBLE: Um tipo flutuante de maior precisão.
- DATE: Um tipo de data (ano, mês, dia).
- DATETIME: Um tipo de data e hora.
- TIMESTAMP: Um tipo de marca temporal.
- BOOLEAN: Um tipo booleano (verdadeiro ou falso).
- BLOB: Um tipo de dados binários de grande tamanho.
- ENUM: Um tipo de dados enumerado, que permite especificar uma lista de valores possíveis para a coluna.



### **NOT NULL** 
é uma restrição que indica que uma coluna não pode conter valores nulos. Isso significa que todas as linhas de uma tabela com uma coluna NOT NULL devem ter um valor definido para essa coluna.

UNIQUE é uma restrição que indica que os valores em uma coluna devem ser únicos. Isso significa que não podem haver valores duplicados na coluna.

Quando ambas as restrições são usadas juntas, como NOT NULL UNIQUE, significa que a coluna não pode conter valores nulos e todos os valores devem ser únicos.

Exemplo:

```SQL
CREATE TABLE clientes (
id INT PRIMARY KEY,
nome VARCHAR(255) NOT NULL UNIQUE,
endereco VARCHAR(255) NOT NULL,
cidade VARCHAR(255) NOT NULL
);
```

## ALTER TABLE
O comando ALTER TABLE é usado para alterar a estrutura de uma tabela existente em um banco de dados. Ele é usado para adicionar, modificar ou excluir colunas, adicionar ou remover restrições e renomear tabelas. A sintaxe geral do comando é a seguinte:

```SQL
ALTER TABLE nome_da_tabela
    [ADD | DROP | MODIFY]  coluna tipo_de_dado [restricoes]
```

Onde "nome_da_tabela" é o nome da tabela que será modificada.
- "ADD" é usado para adicionar uma nova coluna à tabela
- "MODIFY" é usado para modificar uma coluna existente
- "DROP" é usado para excluir uma coluna existente

Exemplo:

```SQL
ALTER TABLE clientes ADD data_de_cadastro DATE NOT NULL;
```

### **SMALLINT**
É um tipo de dado numérico inteiro que é usado para armazenar valores inteiros pequenos. Ele é similar ao tipo INT, mas tem menos capacidade de armazenamento. Ele normalmente tem capacidade de armazenar números inteiros entre -32768 e 32767.

Ao contrário do tipo INT, o SMALLINT ocupa menos espaço na memória e pode ser mais eficiente em termos de desempenho em algumas situações.

Exemplo:

```SQL
CREATE TABLE produtos (
id SMALLINT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
quantidade SMALLINT NOT NULL,
preco FLOAT NOT NULL
);
```

Neste exemplo, a coluna "id" é do tipo SMALLINT e é definida como a chave primária, e a coluna "quantidade" é do tipo SMALLINT e não pode ser nula.

### **AUTO_INCREMENT** 
É uma característica de alguns bancos de dados que permite que uma coluna seja preenchida automaticamente com um valor incremental cada vez que uma nova linha é inserida na tabela. Essa característica é geralmente usada para criar chaves primárias que sejam únicas e sequenciais.

Para definir uma coluna como AUTO_INCREMENT, você pode adicionar a cláusula AUTO_INCREMENT ao final da definição de coluna durante a criação da tabela.

Exemplo:

```SQL
CREATE TABLE clientes (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
endereco VARCHAR(255) NOT NULL,
cidade VARCHAR(255) NOT NULL
);
```
Neste exemplo, a coluna "id" é definida como a chave primária e AUTO_INCREMENT, o que significa que cada vez que uma nova linha é inserida na tabela, o valor da coluna "id" será preenchido automaticamente com o próximo número inteiro disponível, começando em 1.

## **UNSIGNED** 
É uma característica de alguns bancos de dados que permite que uma coluna armazene apenas números inteiros positivos. Quando um valor é definido como "UNSIGNED", o banco de dados não permitirá que valores negativos sejam inseridos naquela coluna.

Ao contrário dos tipos INT e SMALLINT, que podem armazenar tanto valores positivos quanto negativos, os tipos UNSIGNED INT e UNSIGNED SMALLINT só podem armazenar valores positivos.

Exemplo:

```SQL
CREATE TABLE produtos (
id INT UNSIGNED PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
quantidade INT UNSIGNED NOT NULL,
preco FLOAT NOT NULL
);
```

Neste exemplo, a coluna "id" e "quantidade" são do tipo UNSIGNED INT, o que significa que não podem ser inseridos valores negativos na coluna "id" e "quantidade"

Note que alguns bancos de dados podem usar sintaxe diferentes para especificar UNSIGNED, por exemplo, em alguns bancos de dados, você pode precisar adicionar "UNSIGNED" como um atributo separado.

## **DROP TABLE** 
É um comando SQL usado para excluir uma tabela e todos os seus dados de um banco de dados. Ele é geralmente usado para desfazer tabelas que não são mais necessárias ou para excluir tabelas que estão sendo substituídas por novas versões.

A sintaxe geral para excluir uma tabela é:

```SQL
DROP TABLE nome_da_tabela;
```
Observe que, uma vez que uma tabela é excluída, todos os dados armazenados na tabela são permanentemente perdidos e não podem ser recuperados. Além disso, dependências de tabelas, por exemplo, índices, gatilhos, etc, também são excluídos. Portanto, é importante ter cuidado ao usar este comando e sempre fazer backup dos dados antes de excluir uma tabela.

Para excluir uma coluna de uma tabela existente em um banco de dados, é geralmente necessário usar o comando **"ALTER TABLE"** combinado com **"DROP COLUMN"**.

A sintaxe geral para excluir uma coluna é:

```SQL
ALTER TABLE nome_da_tabela
DROP COLUMN nome_da_coluna;
```
