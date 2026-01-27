------------------------DML-------------------------------------------

SELECT *
FROM customers
--****************************INSERT INTO************************8

--****************************insertion through query************************8
--1. INSERT INTO : Use for adding filling the table.

INSERT INTO customers (id,first_name,country,score)
VALUES (80,'hashir','PAK',100),
		(20,'FARHAN','PAK',1000),
		(30,'FUZEEL','PAK',10000)


INSERT INTO customers
VALUES (101,'kbd','IND',20)

INSERT INTO customers (id,first_name,country)
VALUES (102,'dpg','Baldia')


-- selecting the rows where country and score is null--

SELECT *
FROM customers
WHERE score IS NULL and country IS NULL



--***************************insertion of source table to the destination table *******************************
-- copying customers table into employee--

CREATE TABLE PERSON(
ID INT NOT NULL,
NAME VARCHAR(20) NOT NULL,
AGE TINYINT NOT NULL,
SCORE INT  NULL
)

INSERT INTO PERSON (ID,NAME,AGE,SCORE)
SELECT 
id,
first_name,
5,
NULL
FROM customers

SELECT* FROM PERSON
--- created customers_pak table -----
CREATE TABLE customers_pak (
	id INT NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	country VARCHAR(50) NOT NULL,
	score INT NOT NULL,
	CONSTRAINT p_customers PRIMARY KEY(id)
)


INSERT INTO customers_pak(id,first_name,country,score)
VALUES 
	  (1005, 'HASHIR','PAK',1000),
	  (1002, 'FARHAN','PAK',400),
	  (1003, 'AFYAN', 'IND',600)

select * from customers_pak
--- inserted the customer_pak table into customers ---
INSERT INTO customers
Select * from customers_pak

select * from customers


--**************************** UPDATE ************************
select * from customers
----- updateing the score value to 0  where score is null ------------

UPDATE customers
set score = 0
where score is null

----- updating the score value to 50 and country to PAk where id is equal to 10--------

UPDATE customers
set score = 50,
	country = 'PAK'
Where id = 10

----- updating the score value to 500 where score value is equal to zero--------

UPDATE customers
set score=500
where score = 0

select * from customers 
where score = 0 


--**************************** DELETE ************************
------ DELETE FROM DELETE THE ROWS WHICH ARE CONDITIONED----------
--------In the given scenerio we are deleting the rows where id is greater than 20-----------------------------
DELETE FROM customers
where id > 20

------TRUNCATE TABLE DELETE ALL THE ROWS AND COLUMNS IN THE TABLE ( BUT IT KEEP THE TABLE ) ----------
TRUNCATE TABLE PERSON
