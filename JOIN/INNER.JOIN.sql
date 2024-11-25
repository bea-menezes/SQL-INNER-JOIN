
/*

-- 1) Liste nome das cidades e dos países respectivos; 

select 
city.Name as nome_cidade,
country.Name as nome_país
from city
inner join country
on city.CountryCode = country.Code;

*/

/*
-- 2) Quais continentes possuem as cidades mais populosas? Liste o nome da cidade, a população da cidade e o continente do país.

select 
city.Name as nome_cidade,
country.Continent as Continente,
city.Population as populacao
from city
inner join country
on city.CountryCode = country.Code 
where city.Population > 1000000;
*/



/*
-- 3) Quais idiomas oficiais são falados nas cidades? Liste o nome da cidade e os idiomas falados no país.

select DISTINCT 
city.Name as Nome_Cidade,
country.Name as Nome_Pais,
countrylanguage.Language as Idioma

from city
inner join country
on city.CountryCode = country.Code 
inner join countrylanguage
on country.Code = countrylanguage.CountryCode
where country.Name = 'Brazil'
;
*/

/*
-- 4) Liste a soma da população de todas as cidades, agrupadas por continente.

select country.Continent as Continente, SUM(city.Population) as Total_Populacao
from city
inner join country 
on city.CountryCode = country.Code
group by country.Continent 	
;

*/

/*
-- 5) Liste o nome das cidades com mais de 1 milhão de habitantes e o nome do país onde estão localizadas.

select city.Name as Nome_Cidade, country.Name as Nome_Pais, city.Population as Populacao
from city
inner join country
on city.CountryCode = CountryCode
where city.Population > 1000000;
*/








