USE AdventureWorksLT2012

SELECT C.FirstName, C.LastName
FROM SalesLT.Customer AS C
LEFT OUTER JOIN SalesLT.SalesOrderHeader AS S
ON C.CustomerID = S.CustomerID
WHERE S.SalesOrderID IS NULL
