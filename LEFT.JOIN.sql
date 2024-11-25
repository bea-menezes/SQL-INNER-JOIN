-- LEFT JOIN

/*
-- 1) Mostre o nome da cidade e os idiomas falados no país onde a cidade está localizada. Inclua cidades que não tenham idiomas registrados.

select 
city.Name as Nome_Cidade,
countrylanguage.Language as Idioma
from city
left join countrylanguage
on city.CountryCode = countrylanguage.CountryCode
;
*/

/*
-- 2) Mostre o nome do país, o nome da cidade e a população da cidade. Inclua países que não possuem cidades registradas.

select 
country.Name as Pais,
city.Name as Cidade,
city.Population as Populacao
from country
left join city
on country.Code = city.CountryCode;

*/

/*
-- 3) Mostre o nome do país e a soma da população das cidades do país. Inclua países que não possuem cidades registradas.

select 
country.Name as Pais,
SUM(city.Population) as Total_Populacao
from country
left join city
on country.Code = city.CountryCode
group by country.Name;
*/

/*
-- 4) Mostre o nome da cidade, a população da cidade e o continente do país onde a cidade está localizada. Inclua cidades que não tenham países registrados.

select
city.Name as Cidade,
city.Population as Populacao,
country.Continent as Continente
from city
left join country
on city.CountryCode = country.Code;
*/

/*
-- 5) Mostre o idioma, se ele é oficial (IsOfficial) e o nome do país correspondente. Inclua idiomas que não estejam associados a nenhum país.

select 
countrylanguage.Language as Idioma,
country.Name as Pais,
countrylanguage.IsOfficial as IsOfficial
from countrylanguage
left join country
on countrylanguage.CountryCode = country.Code
;
*/










