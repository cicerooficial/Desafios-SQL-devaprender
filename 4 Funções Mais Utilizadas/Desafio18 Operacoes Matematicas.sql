-- OPERAÇÕES MATEMÁTICAS

-- SOMA
SELECT	UnitPrice + LineTotal
FROM	Sales.SalesOrderDetail;

--SUBTRAÇÃO
SELECT	UnitPrice - LineTotal
FROM	Sales.SalesOrderDetail;

--MULTIPLICAÇÃO
SELECT	UnitPrice * LineTotal
FROM	Sales.SalesOrderDetail;

--DIVISÃO
SELECT	UnitPrice / LineTotal
FROM	Sales.SalesOrderDetail;

-- MÉDIA
SELECT	AVG(LineTotal)
FROM	Sales.SalesOrderDetail;

-- MÍNIMO VALOR
SELECT	MIN(LineTotal)
FROM	Sales.SalesOrderDetail;

-- MÁXIMO VALOR
SELECT	MAX(LineTotal)
FROM	Sales.SalesOrderDetail;

-- LIMITA A QUANTIDADE DE CASAS AMOSTRADAS
SELECT	ROUND(LineTotal,2)
FROM	Sales.SalesOrderDetail;

-- RAIZ QUADRADA
SELECT	SQRT(LineTotal)
FROM	SALES.SalesOrderDetail;