-- Desafio 1 - Encontrar renomear as colunas FirstName e LastName da tabela person.person e renomear para "Primeiro Nome" e "Sobrenome"
SELECT	FirstName AS 'Primeiro Nome', LastName as 'Sobrenome'
FROM	Person.Person;

-- Desafio 2 - Encontrar o a coluna ProductName da tabela production.product e renomear a coluna para "Numero do Produto"
SELECT	ProductNumber AS 'NUMERO DO PRODUTO'
FROM	Production.Product;

-- Desafio 3 - Encontrar sales.SalesorderDetail encontrar a coluna unitPrice e renomear para "Preço Unitário"
SELECT	UnitPrice AS 'PREÇO UNITÁRIO'
FROM	Sales.SalesOrderDetail;