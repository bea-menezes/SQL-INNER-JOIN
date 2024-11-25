/*
-- 1) Liste o nome do país e o nome da cidade correspondente. Inclua países que não possuem cidades registradas.

select 
country.Name as Pais,
city.Name as Cidade
from city
right join country
on city.CountryCode = country.Code;

*/

/*
-- 2) Liste os continentes e a soma da população de suas cidades. Inclua continentes que não possuem cidades.

select
country.Continent as Continente,
SUM(city.Population) as Total_Populacao
from city
right join country
on city.CountryCode = country.Code
group by country.Continent
;
*/

/*
-- 3) Mostre o idioma, se ele é oficial e o nome do país correspondente. Inclua países que não possuem idiomas registrados.

select 
countrylanguage.Language as Idioma,
countrylanguage.IsOfficial as IdiomaOfficial,
country.Name as Pais
from countrylanguage
right join country
on countrylanguage.CountryCode = country.Code;
*/

/*
-- 4) Liste o nome da cidade, o continente e a população total da cidade. Inclua continentes que não possuem cidades registradas.

select
city.Name as Cidade,
country.Continent as Continente,
city.Population as Populacao
from city
right join country
on city.CountryCode = country.Code
*/

/*
-- 5) Liste o nome da cidade, o nome do país e o número total de cidades por país. Inclua países que não possuem cidades.

select 
country.Name as Pais,
Count(city.ID) as Quantidade_cidade
from city
right join country
on city.CountryCode = country.Code
GROUP BY country.Name
ORDER BY Quantidade_Cidade DESC;
;
*/










