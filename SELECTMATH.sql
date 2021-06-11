--Mencari Gaji Terbesar dengan Syntax MAX--
SELECT [Gaji Terbesar] = MAX(StaffSalary)
FROM Staff;
--Mencari Gaji Terkecil dengan Syntax MIN--
SELECT [Gaji Terkecil] = MIN(StaffSalary)
FROM Staff;
--Mencari rata rata gaji dengan Syntax AVG--
SELECT [Rata2 Gaji] = AVG(StaffSalary)
FROM Staff;
--Menghitung Banyaknya trasaksi ID dengan Syntax COUNT--
SELECT COUNT(TransactionID)
FROM HeaderSellTransaction;
--Menghitung Total Gaji Staff dengan Syntax SUM--
SELECT [Total Gaji] = SUM(StaffSalary)
FROM Staff;

--LATIHAN AGREGATE--
SELECT [Gender] = LEFT(StaffGender,1), [AVG Salary] = AVG(StaffSalary)
FROM Staff
GROUP BY StaffGender

SELECT StaffPosition, [AVG Salary] = AVG(StaffSalary)
FROM Staff
GROUP BY StaffPosition

SELECT * FROM ItemType;
SELECT * FROM Item;
SELECT * FROM DetailSellTransaction;

SELECT ItemTypeName, [Total Transaction] = COUNT (TransactionID)
FROM DetailSellTransaction dst, Item im, ItemType it
WHERE dst.ItemID = im.ItemID AND im.ItemTypeID = it.ItemTypeID
GROUP BY ItemTypeName

SELECT TransactionID, [Quantity per Transaction] = SUM(SellQuantity)
FROM DetailSellTransaction 
GROUP BY TransactionID