-- DATEPART 

-- https://docs.microsoft.com/pt-br/sql/t-sql/functions/datepart-transact-sql?view=sql-server-ver15

SELECT	SalesOrderID, DATEPART(DAY, OrderDate) AS MES
FROM	Sales.SalesOrderHeader;

SELECT	SalesOrderID, DATEPART(MONTH, OrderDate) AS MES
FROM	Sales.SalesOrderHeader;

SELECT	SalesOrderID, DATEPART(YEAR, OrderDate) AS MES
FROM	Sales.SalesOrderHeader;

-- QUAL FOI A MEDIA DE VALOR DEVIDO POR MÊS?
SELECT	AVG(TotalDue) AS MEDIA, DATEPART(MONTH, OrderDate) AS MES
FROM Sales.SalesOrderHeader
GROUP BY	DATEPART(MONTH, OrderDate)
ORDER BY MES;

-- QUAL FOI A MEDIA DE VALOR DEVIDO POR ANO?
SELECT	AVG(TotalDue) AS MEDIA, DATEPART(YEAR, OrderDate) AS ANO
FROM Sales.SalesOrderHeader
GROUP BY	DATEPART(YEAR, OrderDate)
ORDER BY ANO;

