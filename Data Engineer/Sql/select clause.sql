-- use ( it is used for using a particular data base)--
use mydatabase

SELECT *
FROM customers


SELECT *
FROM orders

-- selecting particular columns from table customer i.e country and score

SELECT
	country,
	score
FROM customers

-- where is used for condition --
SELECT
	first_name,
	score
FROM customers
WHERE (score!=0)


SELECT
	first_name,
	country
FROM customers
WHERE country = 'Germany'



-- order by is used for ordering i.e ascending or descending
-- Ascending order --

SELECT *
FROM customers
ORDER BY score ASC


-- Descending order --

SELECT * 
FROM customers
ORDER BY score DESC



-- ordering by multiple condition---

SELECT 
	first_name,
	country,
	score
FROM customers
ORDER BY country DESC , score ASC


--- groupby it is used to group the data and perform aggregation functions


SELECT 
	country,
	SUM(score) 
FROM customers
GROUP BY  country
ORDER BY country DESC

-- HAVING  same as where but use after groupby meaning that if we want to filter after grouping than we have to use groupby--
-- if we use where it will filter the orignal table --
SELECT 
	country,
	SUM(score)
FROM customers
GROUP BY country
HAVING SUM(score) > 500
ORDER BY SUM(score) ASC


/* using distinct */

SELECT Distinct
	country
FROM customers

-- top--
Select Top 4 
*
From customers

Select Distinct 
	country
From customers


