USE MYDatabase

SELECT * 
FROM customers

SELECT * 
FROM orders

------------------------( Left Anti Join )---------------------

SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON c.id=o.customer_id
WHERE o.customer_id IS NULL


------------------------( Right Anti Join )---------------------

SELECT *
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id=o.customer_id
WHERE c.id IS NULL


------------------------( Full Anti Join )---------------------

SELECT *
FROM customers AS c
FULL JOIN orders AS o
ON c.id=o.customer_id
WHERE (c.id) IS NULL OR (customer_id) IS NULL



------------------------( exercise )---------------------
/* we had to capture the matching rows without using the inner join */

SELECT *
FROM customers AS c
FULL JOIN orders AS o
ON c.id=o.customer_id
WHERE o.customer_id = c. id 


SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON c.id=o.customer_id
WHERE o.customer_id IS NOT NULL


------------------------( Cross Join )---------------------

SELECT *
FROM customers
CROSS JOIN orders