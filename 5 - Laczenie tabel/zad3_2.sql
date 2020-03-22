USE AdventureWorksLT2012

select S.SalesOrderID, S.Freight, F.*
from SalesLT.SalesOrderHeader as S
cross apply dbo.ufnGetFreight(S.Freight) as F
