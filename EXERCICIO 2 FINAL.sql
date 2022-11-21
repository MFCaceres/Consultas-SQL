/*O meu cliente pediu para que mostrasse um relat�rio mostrando, no ano de 2016, e somente no ano de 
2016, qual foi o meu faturamento em dinheiro, em grana, por sabor de produto e eu quero ver a 
participa��o daquela venda em rela��o ao total.*/

/*primeiro eu preciso ter a venda dos meus produtos por sabor no ano de 2016*/

SELECT *FROM [dbo].[TABELA DE PRODUTOS] 
SELECT* FROM [dbo].[NOTAS FISCAIS] 
SELECT * FROM [dbo].[ITENS NOTAS FISCAIS]

/*SELECAO 1 */
SELECT NF.DATA, INF.QUANTIDADE, INF.PRE�O, INF.[CODIGO DO PRODUTO] FROM [dbo].[NOTAS FISCAIS] NF
INNER JOIN [dbo].[ITENS NOTAS FISCAIS] INF
ON NF.NUMERO = INF.NUMERO


/*SELE�AO 2*/
SELECT TP.[NOME DO PRODUTO], TP.SABOR ,TAUX1.DATA, TAUX1.QUANTIDADE, TAUX1.PRE�O
FROM
(SELECT NF.DATA, INF.QUANTIDADE, INF.PRE�O, INF.[CODIGO DO PRODUTO] FROM [dbo].[NOTAS FISCAIS] NF
INNER JOIN [dbo].[ITENS NOTAS FISCAIS] INF
ON NF.NUMERO = INF.NUMERO) TAUX1
INNER JOIN [dbo].[TABELA DE PRODUTOS] TP
ON TP.[CODIGO DO PRODUTO] = TAUX1.[CODIGO DO PRODUTO]


