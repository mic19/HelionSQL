USE AdventureWorksLT2012;

UPDATE P
SET P.ListPrice *= 0.75,
P.StandardCost += 2
FROM SalesLT.Product AS P
JOIN SalesLT.ProductCategory AS PC 
ON P.ProductCategoryID = PC.ProductCategoryID
WHERE PC.Name = 'Forks';

SELECT P.ProductID, P.Name, P.ListPrice, P.StandardCost, PC.Name 
FROM SalesLT.Product AS P
JOIN SalesLT.ProductCategory AS PC 
ON P.ProductCategoryID = PC.ProductCategoryID
WHERE PC.Name = 'Forks';
