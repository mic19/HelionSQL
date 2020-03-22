USE AdventureWorksLT2012;

SELECT OH.OrderDate, C.CustomerID, MAX(OD.UnitPrice) AS Value 
FROM SalesLT.SalesOrderDetail AS OD
JOIN SalesLT.SalesOrderHeader AS OH ON OD.SalesOrderID = OH.SalesOrderID
JOIN SalesLT.Customer AS C ON OH.CustomerID = C.CustomerID
GROUP BY OH.OrderDate, C.CustomerID;

