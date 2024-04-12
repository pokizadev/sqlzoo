--1
--to show all the countries with located continent and population from the table:

SELECT
    name, continent, population
FROM
    world


--2 
--to show the countries from the world, which have a population of at least 200 000 000
SELECT
    name
FROM
    world
WHERE
    population >= 200000000


--3
--to show the name and per capita GDP for countries whith population of at least 200mln
SELECT
    name, GDP/population
FROM
    world
WHERE 
    population >= 200000000


--4
--to show the name and population in millions for the countries of the continent 'South America'
SELECT 
    name, population/1000000
FROM
    world
WHERE
    continent = 'South America'


--5
--to show the name and population of France, Germany, Italy
SELECT
    name, population
FROM
    world
WHERE name IN ('France', 'Germany', 'Italy')


--6
--Show the countries which have name that includes the word 'United'
SELECT
    name
FROM
    world
WHERE
    name  LIKE 'United%'


--7
--A country that has an area of more than 3 mln sq km or it has a population of more than 250 mln
SELECT
    name, population, area
FROM
    world
WHERE
    area > 3000000 OR population > 250000000


--8
--Show the countries that are big by area (more than 3 million) or big by population (more than 250 million) but not both. Show name, population and area.

--Australia has a big area but a small population, it should be included.
--Indonesia has a big population but a small area, it should be included.
--China has a big population and big area, it should be excluded.
--United Kingdom has a small population and a small area, it should be excluded.

SELECT 
    name, population, area
FROM 
    world
WHERE 
    area > 3000000 XOR population > 250000000


--9
--Show the name and population in millions and the GDP in billions for the countries of the continent 'South America'. Use the ROUND function to show the values to two decimal places.
--For Americas show population in millions and GDP in billions both to 2 decimal places.
SELECT 
    name, ROUND(population/1000000,2), ROUND(GDP/1000000000,2)
FROM 
    world
WHERE 
    continent = 'South America'


--10
--Show the name and per-capita GDP for those countries with a GDP of at least one trillion (1000000000000; that is 12 zeros). Round this value to the nearest 1000.

SELECT 
    name, ROUND(GDP/population,-3)
FROM 
    world
WHERE 
    GDP >= 1000000000000


--11
--Show the name and capital where the name and the capital have the same number of characters.
SELECT
    name, capital
FROM
    world
WHERE
    LENGTH(name) = LENGTH(capital)


--12
--Show the name and the capital where the first letters of each match. Don't include countries where the name and the capital are the same word.
SELECT
    name, capital
FROM
    world
WHERE 
    LEFT(name, 1) = LEFT(capital, 1) AND name <> capital


--13
--Find the country that has all the vowels and no spaces in its name.
SELECT
    name
FROM
    world
WHERE
    name NOT LIKE '% %' AND name LIKE '%a%' AND name LIKE '%e%' AND name LIKE '%i%' AND name LIKE '%u%' AND name LIKE '%o%'

