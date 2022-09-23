-- Çàäàíèå 1

-- ï1.1
SELECT DISTINCT City, StateProvince FROM SalesLT.Address order by StateProvince;
-- ï1.2
SELECT TOP[10] percent Name, Weight FROM SalesLT.Product ORDER BY Weight;
--ï1.3
SELECT Name, Weight FROM SalesLT.Product ORDER BY Weight DESC OFFSET 10 ROWS FETCH First 100 ROW ONLY;

-- Çàäàíèå 2

-- ï2.1 
SELECT Name, Color, Size FROM SalesLT.Product WHERE ProductModelID = 1;
-- ï2.2
SELECT ProductNumber, Name FROM SalesLT.Product WHERE (Color = 'black' or Color = 'red' or Color = 'white') and (Size = 'S' or Size = 'M')
-- ï2.3
SELECT ProductNumber, Name, ListPrice FROM SalesLT.Product WHERE ProductNumber LIKE 'BK-%';
-- ï2.4
SELECT ProductNumber, Name, ListPrice FROM SalesLT.Product WHERE ProductNumber LIKE 'BK-[^R]___-[0-9]'
