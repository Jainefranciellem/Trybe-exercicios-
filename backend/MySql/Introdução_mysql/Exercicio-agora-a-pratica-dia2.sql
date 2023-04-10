SELECT "This is SQL Exercise, Practice and Solution";

SELECT "joao" AS NOME;

SELECT 1, 2, 3;

SELECT 10 + 5; 

SELECT (2 * 5) + 10;

SELECT Name AS "Nome do Projeto", Hours AS "Tempo de Trabalho" FROM Scientists.Projects;

SELECT Name FROM Scientists.Scientists ORDER BY Name ASC;

SELECT Name FROM Scientists.Projects ORDER BY Name DESC;

SELECT CONCAT('O projeto ', Name, ' precisou de ', Hours, ' horas para ser concluído.') as resultado FROM Projects;

SELECT Name, Hours FROM Scientists.Projects ORDER BY Hours DESC LIMIT 3;

SELECT DISTINCT Project FROM AssignedTo;

SELECT Name FROM Scientists.Projects ORDER BY Hours ASC LIMIT 1 OFFSET 1;

SELECT * FROM Scientists.Projects ORDER BY Hours ASC LIMIT 5;

SELECT CONCAT('Existem ', COUNT(Name), ' cientistas na tabela Scientists.') AS resultado FROM Scientists.Scientists;

SELECT CONCAT('Existem ', COUNT(Name), ' cientistas na tabela Scientists.') as resultado FROM Scientists;