## Para fixar

-- Para fixar esses conceitos, tente encontrar as seguintes informações, utilizando o schema hr

# 1. Queremos saber o Nome das pessoas colaboradoras e suas respectivas gerências (manager) cujos departamentos (department) são diferentes.
SELECT 
	CONCAT(E.first_name, ' ', E.last_name) AS 'Colaborador',
    CONCAT(M.first_name, ' ', M.last_name) AS 'Gerente'
FROM
	employees AS E
INNER JOIN
	employees AS M
ON
	E.manager_id = M.employee_id
WHERE
	E.department_id <> M.department_id;

# 2. Exiba o Nome e a quantidade de pessoas lideradas de cada pessoa gerente.
SELECT 
    CONCAT(M.first_name, ' ', M.last_name) AS 'Gerente',
    COUNT(E.first_name)
FROM
	employees AS E
INNER JOIN
	employees AS M
ON
	E.manager_id = M.employee_id
GROUP BY
	M.employee_id;