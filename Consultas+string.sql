SELECT LTRIM('      OLA') /* retirando os espa�os na frente da senten�a*/

SELECT RTRIM('OLA      ') /* retirando os espa�os no final da senten�a*/

/*concatenar*/
SELECT CONCAT('OLA ','TUDO BEM')
SELECT 'OLA ' + 'TUDO BEM'

SELECT LEFT('RUA AUGUSTA',3) 

SELECT RIGHT('RUA AUGUSTA',7) 

SELECT UPPER('rua augusta')   

SELECT LOWER('RUA AUGUSTA')   

SELECT REPLACE('R. AUGUSTA','R.','RUA') /*substitui trechos da string*/

SELECT SUBSTRING('RUA AUGUSTA', 1, 3) /*1 � a primeira posis�o*/

SELECT SUBSTRING('RUA AUGUSTA', 2, 4) 

SELECT LEN('RUA AUGUSTA')  /*n�mero de caracter*/

SELECT * FROM [TABELA DE CLIENTES]

SELECT CONCAT(NOME, ' (', CPF, ') ') FROM [TABELA DE CLIENTES]
SELECT CONCAT(NOME, ' (', CPF, ') ') nomeCPF FROM [TABELA DE CLIENTES]

SELECT [NOME] + ' ' + '(' + [CPF] + ')' nomeCPF FROM [dbo].[TABELA DE CLIENTES]

/*Fa�a uma consulta que lista o nome do cliente e o endere�o completo (com rua, bairro, cidade e estado).*/
SELECT [NOME] + ' | ' + [ENDERECO 1] + ', '  + [BAIRRO] + ', ' + [CIDADE] + ', ' + [ESTADO] 
NomeEnderecoCompleto 
FROM [dbo].[TABELA DE CLIENTES]

SELECT [NOME], [ENDERECO 1] + ', '  + [BAIRRO] + ', ' + [CIDADE] + ', ' + [ESTADO] 
NomeEnderecoCompleto 
FROM [dbo].[TABELA DE CLIENTES]

SELECT NOME, CONCAT([ENDERECO 1], ' ', BAIRRO, ' ', CIDADE, ' ', ESTADO) AS COMPLETO
FROM [TABELA DE CLIENTES]



