USE AdventureWorksLT2012;

SELECT P.ProductID, P.Name, COUNT(*) AS Number
FROM SalesLT.Product AS P
JOIN SalesLT.SalesOrderDetail AS OD ON P.ProductID = OD.ProductID
JOIN SalesLT.SalesOrderHeader AS OH ON OD.SalesOrderID = OH.SalesOrderID
GROUP BY P.ProductID, P.Name
HAVING COUNT(*) > 3;
