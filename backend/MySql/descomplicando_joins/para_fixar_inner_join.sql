## Para fixar:

-- Vamos ver agora alguns desafios para consolidar esse conhecimento sobre o INNER JOIN, utilizando o banco de dados sakila.
-- Antes de começar a escrever suas queries, identifique quais tabelas contêm as informações de que você precisa e como elas estão relacionadas.

# 1. Monte uma query que exiba o id do ator, nome do ator e id do filme em que ele já atuou, usando as tabelas actor e film_actor.
SELECT 
    a.actor_id,
    CONCAT(a.first_name, ' ', a.last_name) AS `full_name`,
    f.film_id
FROM
    sakila.actor AS a
        INNER JOIN
    sakila.film_actor AS f ON a.actor_id = f.actor_id;
 

# 2. Use o JOIN para exibir o nome, sobrenome e endereço de cada um dos funcionários do banco. Use as tabelas staff e address.
SELECT 
	CONCAT(s.first_name, ' ', s.last_name) AS `full_name`, a.address
FROM 
	sakila.staff AS s
INNER JOIN
	sakila.address AS a
ON
	s.address_id = a.address_id;

# 3. Exiba o id do cliente, nome e email dos primeiros 100 clientes, ordenados pelo nome em ordem decrescente,
-- juntamente com o id do endereço e o nome da rua onde o cliente mora. Essas informações podem ser encontradas nas tabelas customer e address.
SELECT 
    customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS `full_name`,
    c.email,
    a.address_id,
    a.address
FROM
    sakila.customer AS c
        INNER JOIN
    sakila.address AS a ON c.address_id = a.address_id
ORDER BY c.first_name DESC
LIMIT 100;

# 4. Exiba o nome, email, id do endereço, endereço e distrito dos clientes que moram no distrito da California e que contêm "rene" em seus nomes.
-- As informações podem ser encontradas nas tabelas address e customer.
SELECT 
	c.first_name AS `name`,
    c.email,
    a.address_id,
    a.address,
    district
FROM 
	sakila.customer AS c
INNER JOIN
	 sakila.address AS a 
ON 
	c.address_id = a.address_id
WHERE 
	district = 'California' AND c.first_name LIKE '%rene%';

# 5. Exiba o nome, o sobrenome e a quantidade de filmes alugados por cada cliente cadastrado. Ordene seus resultados por nome e sobrenome de forma decrescente.
-- Exiba somente os clientes ativos. As informações podem ser encontradas nas tabelas customer e rental.
-- ⚠️ Dica: Utilize aliases para deixar suas queries mais descritivas e nomear as colunas da maneira que você quiser.

SELECT
	c.first_name,
    c.last_name,
	COUNT(r.rental_id) AS `qtd_film`
FROM 
	sakila.customer AS c
INNER JOIN
	sakila.rental AS r
ON 
	c.customer_id = r.customer_id
WHERE
	c.active = 1
GROUP BY 
	r.customer_id
ORDER BY
	c.first_name DESC,
    c.last_name DESC;

# 6. Monte uma query que exiba o nome, sobrenome e a média de valor (amount) paga aos funcionários no ano de 2006. Use as tabelas payment e staff.
-- Os resultados devem estar agrupados pelo nome e sobrenome do funcionário.

SELECT 
    S.first_name, S.last_name, AVG(P.amount)
FROM
    sakila.staff AS S
        INNER JOIN
    sakila.payment AS P ON P.staff_id = S.staff_id
WHERE
    payment_date LIKE '2006%'
GROUP BY S.first_name , S.last_name;


# 7. Monte uma query que exiba o id do ator, nome, id do filme e título do filme, usando as tabelas actor, film_actor e film.
-- Dica: você precisará fazer mais de um JOIN na mesma query.

SELECT 
    FA.actor_id, A.first_name, FA.film_id, F.title
FROM
    sakila.film_actor AS FA
        INNER JOIN
    sakila.film AS F ON FA.film_id = F.film_id
        INNER JOIN
    sakila.actor AS A ON FA.actor_id = A.actor_id;

