-- UNION

SELECT	ProductID, Name, ProductNumber
FROM	Production.Product
WHERE	NAME LIKE	'%Chain%'
UNION
SELECT	ProductID,Name,ProductNumber
FROM	Production.Product
WHERE	NAME LIKE '%Decal%';
--ORDER BY Name DESC

SELECT	FirstName, Title, MiddleName
FROM	Person.Person
WHERE	Title LIKE	'Mr.'
UNION
SELECT	FirstName, Title, MiddleName
FROM	Person.Person
WHERE	MiddleName LIKE 'A';

SELECT	FirstName, LastName
FROM	Person.Person
WHERE	FirstName LIKE '%an%'
UNION
SELECT	FirstName,LastName
FROM	Person.Person
WHERE	PersonType = 'IN';