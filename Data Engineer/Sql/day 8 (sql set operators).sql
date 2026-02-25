use salesDB
-----------------------------------Union---------------------------
--It combine all the rows--
--remove the duplicates--

Select
	FirstName,
	LastName
from sales.Customers
UNION
Select 
	FirstName,
	LastName
From sales.Employees

-----------------------------------Union All---------------------------
--It doesn't remove the dupliates.--
--It return all the rows--
Select
	FirstName,
	LastName
from sales.Customers
UNION ALL
Select 
	FirstName,
	LastName
From sales.Employees

-----------------------------------Except---------------------------
--Remove the matching rows and returns the rows remaining in table A--
Select
	FirstName,
	LastName
from sales.Customers
Except
Select 
	FirstName,
	LastName
From sales.Employees

-----------------------------------Intersect---------------------------
--Returns the matching rows from both the tables--
Select
	FirstName,
	LastName
from sales.Customers
Intersect
Select 
	FirstName,
	LastName
From sales.Employees


----------practice-------------
select *
from sales.orders
Union
select *
from sales.ordersarchive