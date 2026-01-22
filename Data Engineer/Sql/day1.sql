-- inline comment
/* Multi line 
comment
*/
Use MyDatabase

Select *
From customers
SELECT *
FROM orders

Select
id,
first_name
From customers
where id>=2

SELECT 
 first_name,
 country
FROM customers
WHERE country='Germany'

/* The order of execution is 
select(3)
from(1)
where (2)*/

SELECT 
 first_name,
 country,
 score
FROM customers
ORDER BY score DESC


SELECT 
 first_name,
 country,
 score
FROM customers
ORDER BY score DESC, country DESC
-- ORDER BY CAN ALSO TAKE TWO VALUES ( NOT SHOWING EFFECT BECAUSE IT IS CONTRADICTING WITH THE FIRST VALUE --

SELECT 
	first_name,
	score
FROM customers
WHERE  score > 350
ORDER BY score DESC

/* THE EXECUTION ORDER WILL BE
SELECT                (4)
	first_name,
	score
FROM customers        (1)
WHERE  score > 350    (2)
ORDER BY score DESC   (3)*/


SELECT 
	country,
	avg(score) AS average,
	COUNT(id) AS idcount
FROM customers
WHERE score > 500
GROUP BY country