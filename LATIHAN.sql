--Latihan NO 1--
--Ubahlah CustomerName menjadi nama pertama dari CustomerName pada table Customer 
--dimana Customer tersebut pernah melakukan transaksi pada tanggal 21.
--Kemudian tampilkan seluar data dari Customer.
--jika sudah berhasil kembalikan datanya seperti semula !

BEGIN TRAN
UPDATE Customer
SET CustomerName = LEFT(CustomerName,CHARINDEX(' ',CustomerName)-1)
FROM Customer cs,HeaderSellTransaction hrs
WHERE cs.CustomerID=hrs.CustomerID AND 
DATENAME(DAY,TransactionDate) =21
ROLLBACK

SELECT * FROM Customer
SELECT * FROM HeaderSellTransaction

--Latihan NO 2--
--Ubahlah PaymentType menjadi “Hutang” untuk setiap transaksi yang di lakukan oleh Customer CU001.
--jika sudah berhasil kembalikan datanya seperti semula !

BEGIN TRAN
UPDATE HeaderSellTransaction
SET PaymentType = 'Hutang'
FROM Customer cs,HeaderSellTransaction hrs
WHERE cs.CustomerID=hrs.CustomerID AND cs.CustomerID = 'CU001'
ROLLBACK

--Latihan NO 3--
--Hapus data staff yang memiliki Salary di bawah Rp.7.000.000
--Kemudian Tampilkan Seluruh data dari table Staff 
--jika sudah berhasil kembalikan datanya seperti semula !

SELECT * FROM Staff
BEGIN TRAN
DELETE FROM Staff
WHERE StaffSalary < 7000000
ROLLBACK

--Latihan NO 4--
--Tamplikan TransactionDate,CustomerName,itemName,Discount(didapat dari 20% Price) dan PaymentType 
--dimana transaksi terjadi pada tanggal 22.
--jika sudah berhasil kembalikan datanya seperti semula !

SELECT TransactionDate,CustomerName, ItemName, [Discount] = 0.2 * Price, PaymentType
FROM Customer Cs, HeaderSellTransaction hst, DetailSellTransaction dst, Item im
WHERE cs.CustomerID = hst.CustomerID AND hst.TransactionID = dst.TransactionID AND dst.ItemID = im.ItemID
AND DATENAME(DAY, TransactionDate) = 22