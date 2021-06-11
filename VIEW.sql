CREATE VIEW [List Staff Male] AS
SELECT * FROM Staff
WHERE StaffGender = 'Male'

SELECT * FROM [List Staff Male]

DROP VIEW [List Staff Male]

CREATE VIEW [List Staff Female] AS
SELECT StaffName
FROM Staff
WHERE StaffGender = 'Female'

SELECT* FROM [List Staff Female]

ALTER VIEW [List Staff Female] AS
SELECT [Nama Depan] = LEFT (StaffName,CHARINDEX(' ',StaffName)-1), [Gender] = LEFT(StaffGender,1)
FROM Staff
WHERE StaffGender = 'Female'