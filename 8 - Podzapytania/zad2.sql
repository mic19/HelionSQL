USE AdventureWorksLT2012;

-- TODO: poprzez podzapytanie niepowiazane bez klauzuli OVER

select top(5) SalesOrderID, TotalDue 
from SalesLT.SalesOrderHeader as OH
where 15 > (
	select count(*) from SalesLT.SalesOrderHeader as OH_INNER 
	where OH.TotalDue > OH_INNER.TotalDue
)
order by TotalDue desc

SELECT * FROM (
	SELECT SalesOrderID, TotalDue, 
	ROW_NUMBER() OVER(ORDER BY TotalDue) AS Rnk
	FROM SalesLT.SalesOrderHeader
) AS W
WHERE W.Rnk between 11 and 15;

