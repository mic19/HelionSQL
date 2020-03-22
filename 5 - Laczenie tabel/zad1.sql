USE AdventureWorksLT2012;

SELECT P.Name
FROM SalesLT.Customer AS C
JOIN SalesLT.SalesOrderHeader AS S
ON C.CustomerID = S.CustomerID
JOIN SalesLT.SalesOrderDetail AS SD
ON S.SalesOrderID = SD.SalesOrderID
JOIN SalesLT.Product AS P
ON SD.ProductID = P.ProductID
WHERE C.FirstName = 'Jeffrey'
ORDER BY P.Name
