--Level 3 — Aggregation + JOIN--

--Show each customer and total order amount.--

SELECT 
	a.name,
	Sum(amount),
	b.customer_id
FROM customers_joinp as a
JOIN order_joinp as b
On a.customer_id=b.customer_id
GROUP BY b.customer_id,a.name

--Show customers with more than 3 orders.--
SELECT 
	a.name,
	count(b.order_id) as total_order
FROM customers_joinp as a
JOIN order_joinp as b
ON a.customer_id=b.customer_id
GROUP BY a.customer_id, a.name
Having Count(b.order_id)>1

--Show customers and their average order amount.--
SELECT 
	a.name,
	AVG(b.amount) as Average_order_amount
FROM customers_joinp as a
JOIN order_joinp as b
ON a.customer_id=b.customer_id
GROUP BY a.customer_id, a.name

--Show customers who placed multiple orders on the same date.--
SELECT
    a.customer_id,
    a.name,
    b.order_date,
    COUNT(b.order_id) AS total_orders
FROM customers_joinp AS a
JOIN order_joinp AS b
ON a.customer_id = b.customer_id
GROUP BY a.customer_id, a.name, b.order_date
HAVING COUNT(b.order_id) > 01;


--Show customers whose total spending is the highest.--

SELECT TOP(1)
    a.customer_id,
    a.name,
	SUM(b.amount) as Highest_spending,
    COUNT(b.order_id) AS total_orders
FROM customers_joinp AS a
JOIN order_joinp AS b
ON a.customer_id = b.customer_id
GROUP BY a.customer_id, a.name
ORDER BY SUM(b.amount) DESC
