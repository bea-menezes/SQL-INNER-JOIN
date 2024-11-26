/*
-- MPORTANTE: Suporte ao FULL OUTER JOIN
Alguns sistemas, como o MySQL, não suportam FULL OUTER JOIN diretamente. 
Nesses casos, é possível simulá-lo combinando LEFT JOIN e RIGHT JOIN com UNION:
*/

-- 1) Liste todas as cidades e países, incluindo cidades sem países registrados e países sem cidades.
SELECT 
    city.Name AS Cidade,
    country.Name AS Paises
FROM city
LEFT JOIN country
ON city.CountryCode = country.Code

UNION

SELECT 
    city.Name AS Cidade,
    country.Name AS Paises
FROM city
RIGHT JOIN country
ON city.CountryCode = country.Code;


-- 2) Mostre todas as cidades e seus idiomas, incluindo cidades sem idiomas e idiomas sem cidades.
SELECT 
city.Name as Cidade,
countrylanguage.Language as Idioma
from city
left join countrylanguage
on city.CountryCode = countrylanguage.CountryCode

union

SELECT 
city.Name as Cidade,
countrylanguage.Language as Idioma
from city
right join countrylanguage
on city.CountryCode = countrylanguage.CountryCode;

-- 3) Liste todos os países e continentes, incluindo continentes sem países e países sem continentes registrados.
select 
country.Name as Pais,
country.Continent as Continente
from country;


-- 4) Identifique cidades e países com populações que não estão associadas diretamente (usando população como base).
select 
city.Name as Cidade,
country.Name as Pais,
city.Population as Populacao
from city
left join country on city.CountryCode = country.Code

union

select 
city.Name as Cidade,
country.Name as Pais,
city.Population as Populacao
from city
right join country on city.CountryCode = country.Code;

-- 5) Crie uma consulta que compare as tabelas city e country para listar registros únicos em ambas as tabelas.
select 
city.Name as Cidade,
country.Name as Pais
from city
left join country on city.CountryCode = country.Code

union

select 
city.Name as Cidade,
country.Name as Pais
from city
right join country on city.CountryCode = country.Code;







