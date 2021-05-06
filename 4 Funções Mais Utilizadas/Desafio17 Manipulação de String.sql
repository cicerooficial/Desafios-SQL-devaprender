-- MANIPULAÇÃO DE STRING

-- https://docs.microsoft.com/pt-br/sql/t-sql/functions/string-functions-transact-sql?view=sql-server-ver15

-- CONCATENAÇÃO
SELECT	CONCAT(FirstName,' ',LastName)
FROM	Person.Person;

-- MAIÚSCULO E MINISCULO
SELECT	UPPER(FirstName), LOWER(FirstName)
FROM	Person.Person;

-- CONTAGEM DE CARACTER
SELECT FirstName,LEN(FirstName)
FROM	Person.Person;

-- TRAZER UMA QUANTIDADE DE STRING SPECÍFICA
SELECT FirstName,SUBSTRING(FirstName,1,3)
FROM	Person.Person;

-- MODIFICAR O CARACTER DE UMA STRING
SELECT	ProductNumber,REPLACE(ProductNumber,'-','#')
FROM	Production.Product;
