SELECT * FROM Item

SELECT ItemTypeID, SUM(Quantity)
FROM Item
GROUP BY ItemTypeID

SELECT ItemTypeID
FROM Item
GROUP BY ItemTypeID
HAVING SUM(Quantity) > 100