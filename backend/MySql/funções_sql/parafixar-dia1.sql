-- Faça uma query que exiba a palavra 'trybe' em CAIXA ALTA.

SELECT UCASE('trybe');

-- Faça uma query que transforme a frase 'Você já ouviu falar do DuckDuckGo?' em 'Você já ouviu falar do Google?'.

SELECT REPLACE('Você já ouviu falar do DuckDuckGo?', 'DuckDuckGo', ' Google?');

-- Utilizando uma query, encontre quantos caracteres temos em 'Uma frase qualquer'.

SELECT CHAR_LENGTH('Uma frase qualquer');

-- Extraia e retorne apenas a palavra “JavaScript” da frase 'A linguagem JavaScript está entre as mais usadas'.

SELECT SUBSTRING('A linguagem JavaScript está entre as mais usadas', 12, 11);

-- Por fim, padronize a string 'RUA NORTE 1500, SÃO PAULO, BRASIL' para que suas informações estejam todas em caixa baixa.

SELECT LCASE('RUA NORTE 1500, SÃO PAULO, BRASIL');