Use SalesDB

Select * from Sales.Orders
Select * from Sales.Products
Select * from Sales.Customers

Select 
	A.OrderID,
	A.Sales,
	B.FirstName As CustomeFirstName,
	B.LastName AS CustomerLastName,
	C.Product,
	C.Price,
	D.FirstName AS EmployeeFirstName,
	D.LastName AS EmployeeLastName
From Sales.Orders as A
LEFT JOIN Sales.Customers As B
ON A.CustomerID=B.CustomerID
LEFT JOIN Sales.Products As C
On A.ProductID=C.ProductID
LEFT JOIN Sales.Employees as D
On A.SalesPersonID=D.EmployeeID


