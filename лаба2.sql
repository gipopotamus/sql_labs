-- ������� 1

-- �1.1
SELECT DISTINCT City, StateProvince FROM SalesLT.Address order by StateProvince;
-- �1.2
SELECT Name, Weight FROM SalesLT.Product ORDER BY Weight DESC OFFSET 0 ROWS FETCH First 29 ROW ONLY;
--�1.3
SELECT Name, Weight FROM SalesLT.Product ORDER BY Weight DESC OFFSET 10 ROWS FETCH First 100 ROW ONLY;

-- ������� 2

-- �2.1 
SELECT Name, Color, Size FROM SalesLT.Product WHERE ProductModelID = 1;
-- �2.2
SELECT ProductNumber, Name FROM SalesLT.Product WHERE (Color = 'black' or Color = 'red' or Color = 'white') and (Size = 'S' or Size = 'M')
-- �2.3
SELECT ProductNumber, Name, ListPrice FROM SalesLT.Product WHERE ProductNumber LIKE 'BK-%';
-- �2.4
SELECT ProductNumber, Name, ListPrice FROM SalesLT.Product WHERE ProductNumber LIKE 'BK-[^R]___-__'
