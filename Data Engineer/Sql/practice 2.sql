USE MYDatabase
SELECT * FROM customers_joinp
SELECT * FROM order_joinp
--Level 1 — Warm-up--

--1.Show customer name and order_id for every order.--

SELECT 
	C.name,
	o.order_id
FROM order_joinp AS o
LEFT JOIN customers_joinp as C
ON  C.customer_id=O.customer_id

--2.Show all customers along with their order_id (if any).--

SELECT 
	C.name,
	o.order_id
FROM order_joinp AS o
RIGHT JOIN customers_joinp as C
ON  C.customer_id=O.customer_id

---3.Show orders that do not match any customer.--

SELECT *
FROM order_joinp AS O
LEFT JOIN customers_joinp AS C
ON C.customer_id=O.customer_id
WHERE C.customer_id IS NULL

--4.Display customer name, order_date, amount.--

SELECT 
	C.name,
	O.order_date,
	O.amount
FROM customers_joinp AS C
FULL JOIN order_joinp AS O
ON C.customer_id=O.customer_id

--5.Show customers who have placed at least one order.*/--

SELECT 
	name
FROM customers_joinp AS C
RIGHT JOIN order_joinp AS O
ON C.customer_id=O.customer_id
WHERE C.customer_id IS NOT NULL


