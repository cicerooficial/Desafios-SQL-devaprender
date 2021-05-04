/*
COUNT

SELECT COUNT (*)
FROM tabela

Para contagem expecífica sem valores nulos/ duplicados 
SELECT COUNT (DISTINCT caoluna1)
FROM tabela

*/

/*
### DESAFIO 4.1 ###

QUANTOS PRODUTOS TEMOS CADASTRADOS EM NOSSA TABELA DE PRODUTOS? R: 504
(PRODUCTION.PRODUCT)
*/

SELECT	COUNT(*)
FROM	Production.Product;

/*
### DESAFIO 4.2 ###

QUANTOS TAMANHOS DE PRODUTOS TEMOS CADASTRADOS EM NOSSA TABELA DE PRODUTOS? R: 211
(PRODUCTION.PRODUCT)
*/

SELECT COUNT(Size)
FROM	Production.Product;

/*
### DESAFIO 4.3 ###

QUANTOS TAMANHOS DIFERENTES DE PRODUTOS TEMOS CADASTRADOS EM NOSSA TABELA DE PRODUTOS? R: 18
(PRODUCTION.PRODUCT)
*/

SELECT COUNT(DISTINCT Size)
FROM	Production.Product;