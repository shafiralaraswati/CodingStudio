SELECT * FROM HeaderSellTransaction

SELECT CustomerName
FROM Customer, HeaderSellTransaction
WHERE DATENAME(DAY, TransactionDate) = 21

SELECT CustomerName
FROM Customer cs, HeaderSellTransaction hts
WHERE cs.CustomerID = hts.CustomerID AND DATENAME (DAY, TransactionDate) = 21

SELECT * FROM Customer