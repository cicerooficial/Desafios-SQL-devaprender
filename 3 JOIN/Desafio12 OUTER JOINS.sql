-- LEFT OUTER JOIN
-- LEFT JOIN

-- QUAIS PESSOAS TEM UM CARTÃO DE CRÉDITO REGISTRADO

SELECT	*
FROM	Person.Person;

SELECT	*
FROM	Sales.PersonCreditCard;

SELECT	*
FROM	Person.Person AS PP
INNER JOIN Sales.PersonCreditCard AS PC
ON	PP.BusinessEntityID = PC.BusinessEntityID;
-- INNER JOIN: 19118 LINHAS

SELECT	*
FROM	Person.Person AS PP
LEFT JOIN Sales.PersonCreditCard AS PC
ON	PP.BusinessEntityID = PC.BusinessEntityID;
-- INNER JOIN: 19972 LINHAS

-- QUAIS PESSOAS NÃO TEM UM CARTÃO DE CRÉDITO REGISTRADO
SELECT	*
FROM	Person.Person AS PP
LEFT JOIN Sales.PersonCreditCard AS PC
ON	PP.BusinessEntityID = PC.BusinessEntityID
WHERE PC.BusinessEntityID IS NULL;
-- 854 LINHAS
