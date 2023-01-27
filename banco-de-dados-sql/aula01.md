# Banco de dados

## O que é um “Banco de Dados”

- É um mecanismo que armazena coleções em uma de estrutura tabular com linhas e colunas.
- Cada tabela possui um índice: conhecidos como **“Primary Key” (Chave Primária - PK)**.
- As tabelas podem apresentar um relacionamento entre si.
- Esse relacionamento é feito inserindo uma PK de uma tabela como um atributo em outra tabela. Assim gerando uma “Foreign Key” (Chave Estrangeira - FK).
- A partir dessa definição temos um “Banco de Dados Relacional.

## Para que usamos um Banco de Dados?

- Possui capacidade de concentrar um grande volume de dados em um único local.
- Múltiplos usuários podem ler e modificar dados simultaneamente.
- Bancos de dados são “buscáveis” e “ordenáveis”. Fazendo com que os dados possam ser obtidos de forma rápida.
- A estrutura de dados é expansível e pode ser modificada conforme os requisitos mudam.
- Existem um **S**istemas de **G**erenciamento de **B**anco de **D**ados chamado **SGBD**.

## Para que serve um **SGBD**?
- Garantem a integridade dos dados através da aplicação do princípio ACID.
- **Atomicity (Atomicidade)**:
  - Caso uma modificação falhe, toda a operação é cancelada. Prevenindo mudanças pela metade
- **Consistency (Consistência)**:
  - Antes de inserir um dado, ele é validado com um conjunto de regras
- **Isolation (Isolamento)**:
  - Permite várias mudanças ao mesmo tempo, mas cada uma é isolada em uma “transação”
- **Durability (Durabilidade)**:
  - Quando uma transação é finalizada, os dados estão seguros.


## O que é uma coleção?
- É um conjunto de itens.
- Os itens compartilham um aspecto comum entre si.
- Existe uma curadoria.
- Existe uma organização.

## O que não é uma coleção? 
- Também é um conjunto de itens.
- Não necessariamente apresentam um aspecto em comum.
- Não existe curadoria.
- Não existe organização.

## Como interagimos com um Banco de dados?
- Utilizamos a linguagem **SQL** (**S**tandard **Q**uery **L**anguage). Pode ser traduzida como “Linguagem Padronizada de Perguntas”.
- Query: Vem do verbo “query” do inglês que significa “perguntar”.
- Escrevemos as palavras reservadas da linguagem em caixa alta **(SELECT, FROM, WHERE, etc)**. Porém isso é uma convenção de **“boas práticas”** e não é obrigatório.
- As palavras reservadas da linguagem do **SQL** são em *inglês*.
- Utilizamos o ; no final de cada query.



## Bancos de dados disponíveis no mercado
Existem muitos bancos de dados diferentes disponíveis no mercado, cada um com suas próprias características e sintaxes. Alguns dos bancos de dados mais populares incluem:

MySQL: é um sistema de gerenciamento de banco de dados relacional open source. Ele é amplamente utilizado em aplicações web e é compatível com muitas linguagens de programação, incluindo PHP, Java e C#.

PostgreSQL: é outro sistema de gerenciamento de banco de dados relacional open source. Ele é conhecido por sua alta escalabilidade e suporte a recursos avançados, como transações e gatilhos.

Oracle: é um banco de dados comercial que é usado em muitas empresas e organizações governamentais. Ele é conhecido por sua escalabilidade e segurança, além de ser compatível com muitas linguagens de programação.

Microsoft SQL Server: é um banco de dados comercial desenvolvido pela Microsoft. Ele é usado principalmente em sistemas Windows e é compatível com muitas linguagens de programação, incluindo C# e Visual Basic.

SQLite: é um banco de dados relacional embutido de código aberto que é projetado para ser usado em dispositivos móveis e aplicativos embarcados. Ele é conhecido por sua simplicidade e facilidade de uso.  