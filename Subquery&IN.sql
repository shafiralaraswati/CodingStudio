--Menggunakan IN--
SELECT * 
FROM Staff
WHERE StaffPosition IN ('Cashier', 'Supervisor')

--Menggunakan Subquery--
SELECT * 
FROM Staff
WHERE StaffID IN (
    SELECT StaffID
    FROM Staff
    WHERE StaffSalary > 7000000
)

--Menggunakan EXISTS--
SELECT * 
FROM Staff
WHERE EXISTS(
    SELECT StaffID
    WHERE StaffSalary > 7000000
)

--Menggunakan Alias Subquery--
SELECT *
FROM Item

SELECT AVG(Price)
FROM Item

SELECT ItemName, Price 
FROM Item, (SELECT [Rata2]= AVG(Price) FROM Item) AS tt 
WHERE Price > tt.Rata2