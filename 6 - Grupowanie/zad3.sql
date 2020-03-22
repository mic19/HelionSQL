
USE AdventureWorksLT2012;

DROP TABLE #Sprzedaz;

CREATE TABLE #Sprzedaz
(
	IDKlienta INT NOT NULL,
	Miesiac INT NOT NULL,
	Wartosc MONEY NOT NULL
);
GO

INSERT INTO #Sprzedaz
SELECT CustomerID, DATEPART(MONTH,  OrderDate), TotalDue
FROM SalesLT.SalesOrderHeader;
GO

SELECT IDKlienta, [4] AS April, [5] AS May, [6] AS June
FROM #Sprzedaz
PIVOT(
	SUM(Wartosc)
	FOR Miesiac IN ([4], [5], [6])
) AS P
ORDER BY IDKlienta;

