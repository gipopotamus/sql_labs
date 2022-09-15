-- Задание 1

-- п1.1
SELECT DISTINCT City, StateProvince FROM SalesLT.Address order by StateProvince;
-- п1.2
SELECT Name, Weight FROM SalesLT.Product ORDER BY Weight DESC OFFSET 0 ROWS FETCH First 29 ROW ONLY;
--п1.3
SELECT Name, Weight FROM SalesLT.Product ORDER BY Weight DESC OFFSET 10 ROWS FETCH First 100 ROW ONLY;

-- Задание 2

-- п2.1 
SELECT Name, Color, Size FROM SalesLT.Product WHERE ProductModelID = 1;
-- п2.2
SELECT ProductNumber, Name FROM SalesLT.Product WHERE (Color = 'black' or Color = 'red' or Color = 'white') and (Size = 'S' or Size = 'M')
-- п2.3
SELECT ProductNumber, Name, ListPrice FROM SalesLT.Product WHERE ProductNumber LIKE 'BK-%';
-- п2.4
SELECT ProductNumber, Name, ListPrice FROM SalesLT.Product WHERE ProductNumber LIKE 'BK-[^R]___-__'
