SELECT * FROM pixar.movies;
SELECT * FROM pixar.box_office;
-- Exercício 1: Insira as produções da Pixar na tabela movies:

INSERT INTO pixar.movies(title, director, `year`, length_minutes)
VALUES ('Monstros SA', 'Pete Docter', 2001, 92),
		('Procurando Nemo', 'John Lasseter', 2003, 107),
		('Os Incríveis', 'Brad Bird', 2004, 116),
		('WALL-E', 'Pete Docter', 2008, 104);
        
-- Exercício 2: O filme Procurando Nemo foi classificado em 6.8, fez 450 milhões no mercado interno e 370 milhões no mercado internacional.
-- Insira as informações à tabela box_office.

INSERT INTO pixar.box_office(rating, domestic_sales, international_sales)
VALUES ('6.8', '450000000', '370000000');

-- Exercício 3: O nome do diretor do filme “Procurando Nemo” está incorreto, ele foi dirigido por Andrew Stanton. Corrija esse dado utilizando o comando UPDATE.

UPDATE pixar.movies
SET director = 'Andrew Stanton'
WHERE id = '9';

-- Exercício 4: O título do filme “Ratatouille” está incorreto na tabela movies.
-- Além disso, o filme foi lançado em 2007 e não em 2010. Corrija esses dados utilizando o comando UPDATE.

UPDATE pixar.movies
SET title = 'Ratatouille', year = '2007'
WHERE id = '3';

-- Exercício 5: Insira as novas classificações abaixo na tabela box_office, lembre-se que a coluna movie_id é uma foreign key referente a coluna id da tabela movies:

INSERT INTO pixar.box_office(movie_id, rating, domestic_sales, international_sales)
VALUES (8, 8.5, 300000000, 250000000),
		(10, 7.4, 460000000, 510000000),
		(11, 9.9, 290000000, 280000000);

-- Exercício 6: Exclua da tabela movies o filme “WALL-E”.

DELETE FROM pixar.box_office
WHERE movie_id = '11';


DELETE FROM pixar.movies
WHERE title = 'WALL-E';

-- Exercício 7: Exclua da tabela movies todos os filmes dirigidos por “Andrew Stanton”.

SELECT id FROM pixar.movies
WHERE director = 'Andrew Stanton';

DELETE FROM pixar.box_office
WHERE movie_id IN (2,9);

SET SQL_SAFE_UPDATES = 0;
DELETE FROM pixar.movies
WHERE director = 'Andrew Stanton';


