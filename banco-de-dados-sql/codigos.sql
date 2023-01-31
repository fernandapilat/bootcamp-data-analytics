--Aula1

-- 1- Selecione os dados da tabela country onde o atributo country é igual a “Brazil”
SELECT * FROM country WHERE country = 'Brazil';

-- 2- Ordene os dados da tabela film pelo nome do filme em ordem alfabética de Z-A
SELECT * FROM film ORDER BY title ASC;

-- 3- Selecione na tabela film todos os filmes que contenham o termo “beautiful” na descrição   
SELECT * FROM film WHERE description LIKE '%beautiful%';

--Aula2

-- 1- Insira um novo ator na tabela actor passando MANUALMENTE todos os dados, incluindo actor_id e last_update
SELECT * FROM actor;
INSERT INTO actor(first_name, last_name) VALUES ('FERNANDA', 'PILAT'); -- ctrl + D 

-- 2- Atualize na tabela film o valor dos atributos rental_duration para 10, replacement_cost para 5.00 do filme “Citizen Shrek”
SELECT * FROM film;
SELECT * FROM film WHERE title = 'Citizen Shrek';
UPDATE film SET rental_duration=10, replacement_cost=5.00 WHERE film_id = 153;

-- 3- Tente deletar o ator que você criou no exercício 1. Depois tente deletar um ator que você não criou.
DELETE FROM actor WHERE actor_id = 201;

-- Exercícios para casa

-- 1 - Crie uma tabela de animais com todos os dados que julgar necessário. Utilize CONSTRAINTS junto conforme o tipo de dado.

CREATE TABLE animais (
    id INT AUTO_INCREMENT PRIMARY KEY UNIQUE,
    nome VARCHAR(50) NOT NULL,
    filos VARCHAR(50) NOT NULL
);

-- poríferos, cnidários, platelmintos, nematódeos ou nematelmintos, anelídeos, equinodermos, moluscos, artrópodes e cordados.

-- 1.1. - Inserir novos dados

INSERT animais(nome, filos) 
VALUES('cachorro', 'cordados'),
('macaco', 'cordados'),
('estrela-do-mar', 'echinodermata'),
('polvo', 'moluscos');

-- 1.2. - Excluir a tabela

DROP TABLE animais;

-- 2 - Adicione uma chave estrangeira à tabela criada

ALTER TABLE animais
ADD country_id INT NOT NULL;

UPDATE animais
SET country_id = 15
WHERE id IN (1, 2, 3, 4, 5);

-- 3 - Remova algum campo da tabela

DELETE FROM animais WHERE id = 3;



-- Exemplo dado em aula

SELECT 
CONCAT( SUBSTRING(first_name, 1, 1), 
        LOWER(SUBSTRING(first_name, 2)), 
        ' ', 
        SUBSTRING(last_name, 1, 1), 
        LOWER(SUBSTRING(last_name, 2))) 'Nome Completo' 
        FROM actor;


-- 1 - Na tabela actor, agrupe os registros pelo last_name para saber quantos atores têm o mesmo sobrenome.

SELECT last_name, count(last_name) as count FROM actor
GROUP BY last_name
ORDER BY count DESC;

-- 2 - Na tabela customer, conte a quantidade de clientes ativos e inativos (bonus: colocar as palavras ativo e inativo, em vez de 0 e 1)

SELECT 
CASE
WHEN active = 1 THEN 'Ativo'
WHEN active = 0 THEN 'Inativo'
ELSE NULL
END as 'active',
COUNT(customer_id) AS count 
FROM
    customer
GROUP BY active; 

-- Exercícios para casa

-- 1 - Faça um select que recupere o nome do cliente na tabela customer e o distrito na tabela address.

SELECT language.name, COUNT(film.film_id)
FROM film 
JOIN language ON film.language_id = language.language_id
GROUP BY language.name;

-- 2 - Busque a quantidade de filmes agrupando pelo idioma do filme.

SELECT language.name, COUNT(film.film_id)
FROM film
JOIN language ON film.language_id = language.language_id
GROUP BY language.name;

-- 3 - Recupere o nome e sobrenome do cliente (customer) e a quantidade de locações (rental) que ele fez, com ordenação do maior para o menor.

SELECT customer.first_name, customer.last_name, COUNT(rental.rental_id) qtd
FROM customer
JOIN rental ON customer.customer_id = rental.customer_id
GROUP BY customer.customer_id
ORDER BY qtd DESC

