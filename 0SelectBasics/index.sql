-- https://www.sqlzoo.net/wiki/SELECT_basics

--1.
-- Show the population of 'Germany'. Note that strings should be in 'single quotes'
SELECT 
    population
FROM
    world
WHERE
    name = 'Germany'


--2.
--Check if an item is in a list. Show the name and population for the countries 'Sweden', 'Norway' and 'Denmark'
SELECT
    name, population
FROM
    world
WHERE
    name IN ('Sweden', 'Norway', 'Denmark')

--3
--Show the country and the area for countries with an area between 200,000 and 250,000.
SELECT
    name, area
FROM
    world
WHERE 
    area BETWEEN 200000 AND 300000