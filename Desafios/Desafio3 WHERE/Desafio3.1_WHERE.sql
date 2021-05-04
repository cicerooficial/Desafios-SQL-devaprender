/*
WHERE

SELECT  coluna1, coluna2, coluna3
FROM    tabela
WHERE   condicao;

OPERADOR    DESCRIÇÃO
=           IGUAL
>           MAIOR QUE
<           MENOR QUE
>=          MAIOR OU IGUAL
<=          MENOR OU IGUAL
<>          DIFERENTE DE
AND         E
OR          OU

SELECT	*
FROM	Person.Person
WHERE	FirstName = 'Anna' AND LastName = 'miller'

SELECT	*
FROM	Production.Product
WHERE	Color = 'Blue' or Color = 'Black'

SELECT	*
FROM	Production.Product
WHERE	Color <> 'Red'

SELECT	*
FROM	Production.Product
WHERE	ListPrice > 1500

SELECT	*
FROM	Production.Product
WHERE	ListPrice > 1500 and ListPrice < 5000

*/

/*
### DESAFIO 3.1 ###

A EQUIPE DE PRODUÇÃO DE PRODUÇÃO PRECISA DOS NOMES DE TODAS AS PEÇAS(WEIGHT) QUE PESAM MAIS DE 500Kg, 
MAS NÃO MAIS QUE 700Kg PARA INSPEÇÃO.
*/

SELECT	ProductID, Name, Weight
FROM	Production.Product
WHERE	Weight > 500 AND Weight < 700;

/*
### DESAFIO 3.2 ###
FOI PEDIDO PELO MARKETING UMA RELAÇÃO DE TODOS OS EMPRESAGOS (EMPLOYEES) QUE SÃO CASADOS
(SINGLE = SOLTEIRO, MARRIED = CASADO) E SÃO ASALARIADOS(SALARIED)
*/

SELECT	*
FROM	HumanResources.Employee
WHERE	MaritalStatus = 'M' AND SalariedFlag = '1';

/*
### DESAFIO 3.3 ###
UM USUÁRIO CHAMADO PETER KREBS ESTÁ DEVENDO UM PAGAMENTO, CONSIGA O E-MAIL DELE PARA QUE POSSAMOS ENVIAR UMA COBRANÇA! *BusinessEntityID
(VOCÊ VAI PRECISA TER QUE USAR A TABLEA PERSON.PERSON E DEPOIS A TABELA PERSON.EMAILADDRESS)
*/

SELECT	BusinessEntityID, FirstName, LastName
FROM	Person.Person
WHERE	Person.FirstName = 'Peter' AND Person.LastName = 'Krebs';

SELECT	BusinessEntityID, EmailAddress
FROM	Person.EmailAddress
WHERE	EmailAddressID = '26';
