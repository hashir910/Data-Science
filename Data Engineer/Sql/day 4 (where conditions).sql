---------------------------------Logical operators------------------------------------
SELECT * FROM customers
WHERE  country = 'Germany' OR country = 'USA'

SELECT * FROM customers
WHERE  (country = 'Germany' AND score>400)

SELECT * FROM customers
WHERE  NOT (country = 'Germany' OR country = 'USA')




---------------------------------RANGE operators------------------------------------
SELECT * FROM customers
WHERE score BETWEEN 300 AND 700


---------------------------------MEMBERSHIP operators------------------------------------
SELECT * FROM customers
WHERE country IN ('USA','GERMANY')

SELECT * FROM customers
WHERE country NOT IN ('USA','GERMANY')


---------------------------------MEMBERSHIP operators------------------------------------
SELECT * FROM customers 
where country LIKE 'U%'

SELECT * FROM customers 
where country LIKE '%Y'

SELECT * FROM customers 
where country LIKE '_e_%'