--Level 2 — Filtering & Logic--

--Show customers who never placed an order.--
SELECT *
FROM customers_joinp AS C
LEFT JOIN order_joinp AS O
ON C.customer_id=O.customer_id
WHERE O.customer_id IS NULL

--Show orders placed by customers living in a specific city.--

SELECT *
FROM customers_joinp AS A
RIGHT JOIN order_joinp AS B
ON A.customer_id=B.customer_id
Where A.city='Karachi'

--Show customers who placed orders worth more than 50,000.--
SELECT 
	A.name,
	sum(amount) AS total_order
FROM customers_joinp AS A
RIGHT JOIN order_joinp AS B
ON A.customer_id=B.customer_id
WHERE A.customer_id IS NOT NULL
GROUP BY A.name
HAVING SUM(amount)>50000


SELECT 
	A.name,
	sum(amount) AS total_order
FROM customers_joinp AS A
INNER JOIN order_joinp AS B
ON A.customer_id=B.customer_id
GROUP BY A.name
HAVING SUM(amount)>50000

--Show orders where customer details are missing.--
SELECT * 
FROM customers_joinp as A
Right JOIN order_joinp as B
ON A.customer_id=B.customer_id
Where A.customer_id IS NULL

--Show customer names who placed orders in January.--
SELECT * 
FROM customers_joinp as A
JOIN order_joinp as B
ON A.customer_id=B.customer_id
WHERE MONTH(B.order_date)='01'