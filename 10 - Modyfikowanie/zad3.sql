USE AdventureWorksLT2012;

DELETE FROM Panie
WHERE CustomerID < 50;

UPDATE Panie
SET FirstName = 'X'
WHERE CustomerID%2 = 1;

INSERT INTO Panie (FirstName, LastName)
VALUES ('Ala', 'Nowak');

MERGE INTO Panie AS P
USING (SELECT * FROM SalesLT.Customer WHERE LastName LIKE '%a') AS C
ON P.CustomerID = C.CustomerID
WHEN MATCHED THEN
	UPDATE SET P.FirstName = C.FirstName
WHEN NOT MATCHED THEN
	INSERT (FirstName, LastName) VALUES (C.FirstName, C.LastName)
WHEN NOT MATCHED BY SOURCE THEN
	DELETE;

select * from Panie;
