USE AdventureWorksLT2012;

SELECT DISTINCT YEAR(OH.DueDate) AS [Year],
MONTH(OH.DueDate) AS [Month], 
DAY(OH.DueDate) AS [Day],
SUM(OH.TotalDue) OVER (PARTITION BY YEAR(OH.DueDate), MONTH(OH.DueDate), DAY(OH.DueDate)) AS SalesPerDay,
SUM(OH.TotalDue) OVER (PARTITION BY YEAR(OH.DueDate), MONTH(OH.DueDate)) AS SalesPerMonth,
SUM(OH.TotalDue) OVER (PARTITION BY YEAR(OH.DueDate)) AS SalesPerYear,
SUM(OH.TotalDue) OVER () AS OverallSales
FROM SalesLT.SalesOrderHeader AS OH;

/*
SELECT YEAR(OH.DueDate) AS [year], 
MONTH(OH.DueDate) AS [month], 
DAY(OH.DueDate) AS [day],
SUM(OH.TotalDue)
FROM SalesLT.SalesOrderHeader AS OH
GROUP BY YEAR(OH.DueDate), MONTH(OH.DueDate), DAY(OH.DueDate)
*/

