USE MyDatabase
SELECT * FROM customers
SELECT * FROM orders
----------------------( INNER JOIN )------------------------------
/*best practice is to always write the name of the table before column name 
so, it cannot create a mess when you have multiple columns */

SELECT 
	customers.id,
	orders.order_id,
	customers.first_name,
	orders.order_date,
	orders.sales
FROM customers
INNER JOIN orders
ON id=customer_id
order by order_date DESC

-- second method is to define the table by as and then write the assign define value before column--

SELECT 
	c.id,
	o.order_id,
	c.first_name,
	o.order_date,
	o.sales
FROM customers AS c
INNER JOIN orders AS o
ON id=customer_id
order by order_date DESC

----------------------( LEFT JOIN )------------------------------

SELECT * 
FROM customers AS c
LEFT JOIN orders AS o
ON c.id=o.customer_id


----------------------( RIGHT JOIN )------------------------------

SELECT *
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id=o.customer_id

----------------------( FULL JOIN )------------------------------

SELECT *
FROM customers as c                 --declaring the table as c--
FULL JOIN orders as o	            --declaring the table as o--
ON c.id=o.customer_id