## Exercícios - agora, a prática
​
-- Faça os exercícios 1 a 6 utilizando banco de dados pixar abaixo:
​
# Exercício 1: Utilizando o INNER JOIN, encontre as vendas nacionais (domestic_sales) e internacionais (international_sales) de cada filme.
SELECT
	M.title,
	B.domestic_sales,
	B.international_sales
FROM 
	pixar.box_office AS B
INNER JOIN
	pixar.movies AS M
ON
	M.id = B.movie_id;
​
# 🚀 Exercício 2: Utilizando o INNER JOIN, faça uma busca que retorne o número de vendas para cada filme que possui 
-- um número maior de vendas internacionais (international_sales) do que vendas nacionais (domestic_sales).
SELECT
	M.title,
    B.international_sales,
	B.domestic_sales
FROM 
	pixar.box_office AS B
​
INNER JOIN
	pixar.movies AS M
ON
	M.id = B.movie_id
WHERE 
	B.international_sales > B.domestic_sales;
​
# 🚀 Exercício 3: Utilizando o INNER JOIN, faça uma busca que retorne os filmes e sua avaliação (rating) em ordem decrescente.
SELECT
	M.title,
	B.rating
FROM 
	pixar.box_office AS B
​
INNER JOIN
	pixar.movies AS M
ON
	M.id = B.movie_id
ORDER BY B.rating DESC;
​
# Exercício 4: Utilizando o LEFT JOIN, faça uma busca que retorne todos os dados dos cinemas, mesmo os que não possuem filmes em cartaz e, adicionalmente,
-- os dados dos filmes que estão em cartaz nestes cinemas. Retorne os nomes dos cinemas em ordem alfabética.
USE pixar;
​
SELECT
    t.name,
    t.location,
    m.title,
    m.director,
    m.year,
    m.length_minutes
FROM
    theater t
LEFT JOIN
    movies m 
ON 
	t.id = m.theater_id
ORDER BY
	t.`name`;
​
# Exercício 5: Utilizando o RIGHT JOIN, faça uma busca que retorne todos os dados dos filmes, mesmo os que não estão em cartaz e, adicionalmente,
-- os dados dos cinemas que possuem estes filmes em cartaz. Retorne os nomes dos cinemas em ordem alfabética.
SELECT 
	T.name,
    T.location,
    M.title,
    M.director,
    M.year,
    M.length_minutes 
FROM 
	pixar.theater AS T
RIGHT JOIN
	pixar.movies AS M
ON
	T.id = M.theater_id
ORDER BY 
	T.`name` ASC;
	
 ## Exercícios - bônus
  
  # 🚀 Exercício 6: Utilizando o INNER JOIN, selecione todas as informações dos filmes que estão em cartaz (possuem theater_id diferente de NULL)
  -- com avaliação maior que 8.
  SELECT
	M.id,
    M.title,
    M.director,
    M.year,
    M.length_minutes,
    M.theater_id
FROM 
	pixar.movies AS M
INNER JOIN
	pixar.box_office AS B
ON 
	M.id = B.movie_id
WHERE 
	M.theater_id <> 'null' 
AND 
	B.rating > 8;
​
 