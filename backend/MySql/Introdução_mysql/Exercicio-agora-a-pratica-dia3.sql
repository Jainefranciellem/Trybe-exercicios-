-- Vamos lá! Faça uma consulta na tabela item que retorne todos os dados em que a coluna name comece com as letras GR.

SELECT * FROM store.itens
WHERE name LIKE 'GR%';

-- escreva uma query para retornar da tabela supply os dados em que a coluna item_id possua o valor 2.
-- Organize o resultado por ordem alfabética de supplier_id.

SELECT * FROM store.supplies
WHERE item_id = 2 ORDER BY supplier_id;

-- Em seguida, faça uma consulta para exibir item_id, price e supplier_id de supply em que o valor de supplier_id tenha a letra N.

SELECT  item_id, price, supplier_id FROM store.supplies
WHERE supplier_id LIKE '%N%';

 -- Avante, falta pouco!  Escreva uma query para exibir todas as informações de supplier que são empresas limitadas (LTDA). 
 -- Ordene esses resultados em ordem alfabetica decrescente.
 
SELECT * FROM store.suppliers
WHERE name LIKE '%LTDA%' ORDER BY name DESC;

-- Agora, faça uma consulta para exibir o número de empresas (supplier) que contém a letra F no código.

SELECT  COUNT(supplier_id) FROM store.supplies
WHERE supplier_id LIKE '%F%';

-- agora escreva uma query para exibir de supply, itens que custam mais de R$15,00 e menos de $40,00. Ordene os resultados por ordem crescente.

SELECT supplier_id FROM store.supplies
WHERE price > 15 AND price < 40 ORDER BY supplier_id;

-- Ufa! Por fim, faça uma query para exibir o número de vendas (sale) feitas entre os dias 15/04/2018 e 30/07/2019.

SELECT COUNT(id) FROM store.sales
WHERE order_date BETWEEN '2018-04-15 00:00:00' AND '2019-07-30 23:59:59';
