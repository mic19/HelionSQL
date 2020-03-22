USE AdventureWorksLT2012;

SELECT OH.SalesOrderID, OH.CustomerID FROM SalesLT.SalesOrderHeader AS OH
WHERE OH.CustomerID IN (
	SELECT C.CustomerID FROM SalesLT.Customer AS C
	WHERE C.LastName = 'Eminhizer'
);
