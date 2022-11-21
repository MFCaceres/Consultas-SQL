
SELECT SYSDATETIME()

SELECT SYSDATETIMEOFFSET() /*mostra a data + hora + fuso horário em relaçao a greenwashing*/

SELECT SYSUTCDATETIME()/* mostra a hora em greenwashing, fuso horário = 0*/

SELECT CURRENT_TIMESTAMP/*menor precisão nos microsegundos*/

SELECT GETDATE()/*DATA DE HOJE com menor precisão nos microsegundos*/

SELECT GETUTCDATE()/* mostra a hora em greenwashing, fuso horário = 0*/

SELECT DATENAME(YEAR,GETDATE())

SELECT DATENAME(MICROSECOND,GETDATE())

SELECT DATENAME(MINUTE,GETDATE())


SELECT DATENAME(MONTH,GETDATE())

SELECT DATEPART(MONTH,GETDATE())

SELECT DAY(GETDATE())

SELECT YEAR(GETDATE())

SELECT DATEFROMPARTS(2015,9,1) /* cria a data*/

SELECT DATENAME(MONTH,DATEFROMPARTS(2015,9,1)) /*convertendo  em data e extraindo o nome do mês*/

SELECT DATETIME2FROMPARTS(2015,9,1,13,12,11,120,4) /*criar uma data com precisão de hora, minuto, 
segundo, milissegundo.*/

SELECT DATEDIFF(MONTH, DATEFROMPARTS(2015,9,1), GETDATE())

SELECT DATEADD(MONTH, 5, GETDATE()) /* adiciona a data de HOJE 5 meses*/

SELECT ISDATE('2018-01-01')

SELECT ISDATE('2018-25-28')

SELECT * FROM [NOTAS FISCAIS]

SELECT [DATA], CONCAT(DATENAME(DAY, [DATA]), ' ', DATENAME(MONTH, [DATA]), ' ', DATENAME(YEAR, [DATA]))
FROM [NOTAS FISCAIS]

/*Crie uma consulta que mostre o nome e a idade dos clientes.*/
SELECT [NOME],[IDADE] FROM [dbo].[TABELA DE CLIENTES]

SELECT NOME, DATEDIFF(YEAR, [DATA DE NASCIMENTO], GETDATE()) AS IDADE
FROM [TABELA DE CLIENTES]





