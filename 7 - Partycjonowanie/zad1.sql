USE AdventureWorksLT2012;

WITH A AS
(
SELECT P.ProductNumber,
COUNT(*) SalesCount
FROM SalesLT.Product AS P
JOIN SalesLT.SalesOrderDetail AS OD ON P.ProductID = OD.ProductID
GROUP BY P.ProductNumber
)

SELECT ProductNumber, SalesCount,
ROW_NUMBER() OVER(ORDER BY SalesCount DESC),
DENSE_RANK() OVER(ORDER BY SalesCount DESC)
FROM A;
