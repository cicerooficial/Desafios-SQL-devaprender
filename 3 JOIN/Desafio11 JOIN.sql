/* 
JOINS

INNER JOIN
*/

 -- BusinesEntityId, FIrstName, LastName, EmailAdress
SELECT TOP 10 *
FROM Person.Person

SELECT TOP 10 *
FROM Person.EmailAddress

SELECT	p.BusinessEntityID, p.FirstName, p.LastName, pe.EmailAddress
FROM	Person.Person AS p
INNER JOIN	Person.EmailAddress pe	ON	p.BusinessEntityID = pe.BusinessEntityID

-- Os nomes dos produtos e as informações de suas subcategorias e preço de cada produto
SELECT TOP 10 *
FROM	Production.Product

SELECT TOP 10 *
FROM	Production.ProductSubcategory

SELECT P.Name, PS.Name, P.ListPrice
FROM Production.Product AS P
INNER JOIN Production.ProductSubcategory AS PS ON P.ProductSubcategoryID = PS.ProductSubcategoryID

-- JUNTANDO TODAS AS COLUNAS DE DUAS TABELAS

SELECT TOP 10 *
FROM	Person.BusinessEntityAddress

SELECT TOP 10 *
FROM	Person.Address

SELECT TOP 10 *
FROM Person.BusinessEntityAddress AS BA
INNER JOIN	Person.Address AS PA ON PA.AddressID = BA.AddressID

-- TRAZER O RESULTADO DE BUSINESSENTITYID, NAME, PHONENUMBERTYPEID, PHONENUMBER

SELECT TOP 10 *
FROM	Person.PhoneNumberType

SELECT TOP 10 *
FROM	Person.PersonPhone

SELECT	PF.BusinessEntityID, PN.Name, PN.PhoneNumberTypeID, PF.PhoneNumber
FROM	Person.PersonPhone AS PF
INNER JOIN	Person.PhoneNumberType AS PN ON PF.PhoneNumberTypeID = PN.PhoneNumberTypeID

-- TRAZER O ADDRESSID, CITY, STATEPROVINCEID, NOME DO ESTADO

SELECT TOP 10 *
FROM	Person.StateProvince

SELECT TOP 10 *
FROM	Person.Address

SELECT	PA.AddressID, PA.City,PS.StateProvinceID, PS.Name
FROM	Person.StateProvince AS PS
INNER JOIN	Person.Address AS PA ON PS.StateProvinceID = PA.StateProvinceID