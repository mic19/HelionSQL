USE AdventureWorksLT2012

IF OBJECT_ID (N'dbo.ufnGetFreight', N'FN') IS NOT NULL  
    DROP FUNCTION dbo.ufnGetFreight;  
GO

CREATE FUNCTION dbo.ufnGetFreight
(
@Freight float
)
RETURNS @out table
(
	info NVARCHAR(5)
)
AS
BEGIN
	IF(@Freight < 100)
		insert into @out values('Low')
	ELSE
		insert into @out values('High')

    RETURN
END;

--select S.SalesOrderID, S.Freight, F.*
--from SalesLT.SalesOrderHeader as S
--cross apply dbo.ufnFreight(S.Freight) as F

