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






