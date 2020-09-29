use world;

-- Utilize a modelagem (Figura 2) e crie as estruturas SQL para as questões:

-- a) Mostre os nomes dos países e seus continentes.
select Name, Continent from country;

-- b) Mostre os nomes dos países, região e a população dos países do continente ‘Europe’.
select Name, Region, Population, Continent from country
where continent = 'Europe';

-- c) Mostre a expectativa de vida das pessoas do continente ‘Asia'.
select LifeExpectancy, Continent from country
where Continent = 'Asia';

-- d) Crie uma view que mostre os nomes dos países, seu presidente (HeadOfState)
-- tipos de governo (GovernmentForm) e a população dos países do continente ‘South America’ 
-- e com população maior que 2000000.
create view consult_population as
select c.Name as Nome, c.HeadOfState as Presidente, c.GovernmentForm as Tipo_Governo, c.Continent as Continente, c.Population as População from country c
where c.Continent = 'South America'
and c.Population > 2000000;

select * from consult_population;

-- e) Crie uma view que mostre os nomes dos países, tamanho da sua área (surfaceArea) e seu idioma. 
-- Exibir somente os países com 
-- idioma ‘English’ como oficial. Ordenar pelo tamanho da área (da menor para maior). Mostre também como usar a View.
create view nome_paises as
select c.Name as Nome_do_Pais, c.SurfaceArea as Area_do_Pais, l.Language as Idioma from country c, countrylanguage l
where c.Code = l.CountryCode
and l.Language = 'English'
order by c.SurfaceArea;

select * from nome_paises;

-- f) Altere a view do exercício anterior para incluir a porcentagem de pessoas que falam o 
-- idioma ‘English’ como oficial. Mostre também como usar a View.

alter view nome_paises as
select c.Name as Nome_do_Pais, c.SurfaceArea as Area_do_Pais, l.Language as Idioma, l.Percentage as Porcentagem from country c, countrylanguage l
where c.Code = l.CountryCode
and l.Language = 'English'
order by c.SurfaceArea;

select * from nome_paises;

