--DATENAME--
--interval = DAY, WEEKDAY, MONTH, YEAR--
SELECT DATENAME(WEEKDAY,TransactionDate)
FROM HeaderSellTransaction;
--DATEDIFF--
SELECT DATEDIFF(YEAR,'1945/08/17','2021/08/17');
--DATEDADD--
SELECT DATEADD(DAY, 3,'1945/08/17');
SELECT DATEADD(YEAR, 3,'1945/08/17');