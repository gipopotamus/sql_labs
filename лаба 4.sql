USE AdventureWorksLT

--������ 1

--���������� 1
SELECT cus.CompanyName, addr.AddressLine1, addr.City, 'Billing' AS AddressType
FROM SalesLT.Customer AS Cust
JOIN SalesLT.CustomerAddress AS cadd
ON Cust.CustomerID = cadd.CustomerID
JOIN SalesLT.Address AS addr
ON cadd.AddressID = addr.AddressID
WHERE cadd.AddressType = 'Main Office';

--���������� 2
SELECT cus.CompanyName, addr.AddressLine1, addr.City, 'Shipping' AS AddressType
FROM SalesLT.Customer AS Cust
JOIN SalesLT.CustomerAddress AS cadd
ON Cust.CustomerID = cadd.CustomerID
JOIN SalesLT.Address AS addr
ON Cust.AddressID = addr.AddressID
WHERE cadd.AddressType = 'Shipping';

--���������� 3
SELECT cus.CompanyName, addr.AddressLine1, addr.City, 'Billing' AS AddressType
FROM SalesLT.Customer AS Cust
JOIN SalesLT.CustomerAddress AS cadd
ON Cust.CustomerID = cadd.CustomerID
JOIN SalesLT.Address AS addr
ON cadd.AddressID = addr.AddressID
WHERE cadd.AddressType = 'Main Office'
UNION ALL
SELECT Cust.CompanyName, addr.AddressLine1, addr.City, 'Shipping' AS AddressType
FROM SalesLT.Customer AS cus
JOIN SalesLT.CustomerAddress AS cadd
ON Cust.CustomerID = cadd.CustomerID
JOIN SalesLT.Address AS addr
ON cadd.AddressID = addr.AddressID
WHERE cadd.AddressType = 'Shipping'
ORDER BY Cust.CompanyName, AddressType;

--������ 2

--��������� 1
SELECT cus.CompanyName
FROM SalesLT.Customer AS cus
JOIN SalesLT.CustomerAddress AS cadd
ON cus.CustomerID = cadd.CustomerID
JOIN SalesLT.Address AS addr
ON cadd.AddressID = addr.AddressID
WHERE cadd.AddressType = 'Main Office'
EXCEPT
SELECT cus.CompanyName
FROM SalesLT.Customer AS cus
JOIN SalesLT.CustomerAddress AS cadd
ON cus.CustomerID = cadd.CustomerID
JOIN SalesLT.Address AS addr
ON cadd.AddressID = addr.AddressID
WHERE cadd.AddressType = 'Shipping'

--��������� 2
SELECT cus.CompanyName
FROM SalesLT.Customer AS cus
JOIN SalesLT.CustomerAddress AS cadd
ON cus.CustomerID = cadd.CustomerID
JOIN SalesLT.Address AS addr
ON cadd.AddressID = addr.AddressID
WHERE cadd.AddressType = 'Main Office'
INTERSECT
SELECT cus.CompanyName
FROM SalesLT.Customer AS cus
JOIN SalesLT.CustomerAddress AS cadd
ON cus.CustomerID = cadd.CustomerID
JOIN SalesLT.Address AS addr
ON cadd.AddressID = addr.AddressID
WHERE cadd.AddressType = 'Shipping'