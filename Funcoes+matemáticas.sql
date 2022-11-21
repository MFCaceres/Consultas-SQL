
SELECT CEILING(12.333223) /*gera o MAIOR interiro próximo a número*/

SELECT FLOOR(12.333223)/*gera o MENOR interiro próximo a número*/

SELECT RAND() /* gera um valor aleatório*/

SELECT ROUND(12.33323323, 2) /* arrendondou a valor para duas casas decimais*/

SELECT * FROM [ITENS NOTAS FISCAIS]

/*FATURAMENTO sem e com arredondamento*/
SELECT [QUANTIDADE], [PREÇO], ([QUANTIDADE] * [PREÇO]) FATURAMENTO FROM [ITENS NOTAS FISCAIS]
SELECT [QUANTIDADE], [PREÇO], ROUND(([QUANTIDADE] * [PREÇO]),1) FATURAMENTO FROM [ITENS NOTAS FISCAIS]

/*Na tabela de notas fiscais, temos o valor do imposto. Já na tabela de itens, temos a quantidade e o 
faturamento. Calcule o valor do imposto pago no ano de 2016, arredondando para o menor inteiro.*/
SELECT * FROM [dbo].[NOTAS FISCAIS]
SELECT * FROM [ITENS NOTAS FISCAIS]

SELECT [dbo].[NOTAS FISCAIS].CPF, [dbo].[NOTAS FISCAIS].IMPOSTO,  YEAR (DATA) 
FROM [dbo].[NOTAS FISCAIS] INNER JOIN 
 [dbo].[ITENS NOTAS FISCAIS] ON  [dbo].[NOTAS FISCAIS].NUMERO = [dbo].[ITENS NOTAS FISCAIS].NUMERO 


 SELECT  YEAR (DATA),FLOOR(SUM( IMPOSTO* ([QUANTIDADE] * [PREÇO]))) IMPOSTO_PAGO
 FROM [dbo].[NOTAS FISCAIS] INNER JOIN 
 [dbo].[ITENS NOTAS FISCAIS] ON  [dbo].[NOTAS FISCAIS].NUMERO = [dbo].[ITENS NOTAS FISCAIS].NUMERO 
 WHERE YEAR (DATA) = 2016
 GROUP BY YEAR (DATA) 

 SELECT YEAR(DATA), FLOOR(SUM(IMPOSTO * (QUANTIDADE * PREÇO))) 
FROM [NOTAS FISCAIS] NF
INNER JOIN [ITENS NOTAS FISCAIS] INF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(DATA) = 2016
GROUP BY YEAR(DATA)
