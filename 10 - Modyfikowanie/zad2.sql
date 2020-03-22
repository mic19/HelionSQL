USE AdventureWorksLT2012;

SELECT CustomerID, FirstName, LastName
INTO Panie
FROM SalesLT.Customer
WHERE LastName LIKE '%a';

SELECT * FROM Panie;
