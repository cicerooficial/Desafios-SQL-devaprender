-- SUBQUERY

-- SUBQUERY

 -- Monte um relatório de todos os produtos cadastrados que tem o preço de vende acima da média

--SELECT	AVG(ListPrice)
--FROM	Production.Product;

--SELECT	*
--FROM	Production.Product
--WHERE	ListPrice > 438.66;

SELECT	*
FROM	Production.Product
WHERE	ListPrice > (SELECT AVG(ListPrice) FROM Production.Product)
ORDER BY ListPrice ASC;

-- BUSCAR O NOME DOS FUNCIONÁRIOS QUE TEM O CARGO DE 'DESIGN ENGINEER'

SELECT	*
FROM	Person.Person;

SELECT	*
FROM	HumanResources.Employee
WHERE JobTitle = 'Design Engineer';

SELECT	*
FROM	Person.Person as P
WHERE	P.BusinessEntityID IN (SELECT HE.BusinessEntityID FROM HumanResources.Employee AS HE
WHERE	HE.JobTitle = 'Design Engineer')
--OU
SELECT	*
FROM	Person.Person AS P
INNER JOIN HumanResources.Employee HE ON P.BusinessEntityID = HE.BusinessEntityID
AND HE.JobTitle = 'Design Engineer';

-- DESAFIO 1 - ENCONTRAR TODAS AS INFORMAÇÕES DE TODOS OS ENDEREÇOS QUE ESTÃO NO ESTADO DE 'ALBERTA'

--SELECT	*
--FROM	Person.Address AS PA;

--SELECT	*
--FROM	Person.StateProvince AS PS
--WHERE	PS.Name = 'Alberta';

SELECT	*
FROM	Person.Address AS PA
WHERE	PA.StateProvinceID IN (SELECT PS.StateProvinceID FROM Person.StateProvince AS PS 
WHERE	PS.Name = 'Alberta');

SELECT	*
FROM	Person.Address AS PA
INNER JOIN Person.StateProvince AS PS ON PA.StateProvinceID = PS.StateProvinceID
AND PS.Name = 'Alberta';