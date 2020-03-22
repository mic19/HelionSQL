USE AdventureWorksLT2012;

SELECT OH.SalesOrderID, OH.DueDate, OH.CustomerID 
FROM SalesLT.SalesOrderHeader AS OH
WHERE OH.DueDate IN (
	SELECT MAX(OH_INNER.DueDate)
	FROM SalesLT.SalesOrderHeader AS OH_INNER
	GROUP BY YEAR(OH_INNER.DueDate), MONTH(OH_INNER.DueDate)
);

SELECT YEAR(DueDate) AS [year], 
MONTH(DueDate) AS [month],
DAY(MAX(DueDate))
FROM SalesLT.SalesOrderHeader
GROUP BY YEAR(DueDate), MONTH(DueDate);
