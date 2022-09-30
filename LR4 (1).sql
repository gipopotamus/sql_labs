USE AdventureWorksLT

/*������ 1.1*/
SELECT cus.CompanyName, addr.AddressLine1, addr.City, 'Billing' AS AddressType
FROM SalesLT.Customer AS cus
JOIN SalesLT.CustomerAddress AS cadd
ON cus.CustomerID = cadd.CustomerID
JOIN SalesLT.Address AS addr
ON cadd.AddressID = addr.AddressID
WHERE cadd.AddressType = 'Main Office';

/*������ 1.2*/
SELECT cus.CompanyName, addr.AddressLine1, addr.City, 'Shipping' AS AddressType
FROM SalesLT.Customer AS cus
JOIN SalesLT.CustomerAddress AS cadd
ON cus.CustomerID = cadd.CustomerID
JOIN SalesLT.Address AS addr
ON cadd.AddressID = addr.AddressID
WHERE cadd.AddressType = 'Shipping';

/*������ 1.3*/
SELECT cus.CompanyName, addr.AddressLine1, addr.City, 'Billing' AS AddressType
FROM SalesLT.Customer AS cus
JOIN SalesLT.CustomerAddress AS cadd
ON cus.CustomerID = cadd.CustomerID
JOIN SalesLT.Address AS addr
ON cadd.AddressID = addr.AddressID
WHERE cadd.AddressType = 'Main Office'
UNION ALL
SELECT cus.CompanyName, addr.AddressLine1, addr.City, 'Shipping' AS AddressType
FROM SalesLT.Customer AS cus
JOIN SalesLT.CustomerAddress AS cadd
ON cus.CustomerID = cadd.CustomerID
JOIN SalesLT.Address AS addr
ON cadd.AddressID = addr.AddressID
WHERE cadd.AddressType = 'Shipping'
ORDER BY cus.CompanyName, AddressType;

/*������ 2.1*/
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

/*������ 2.2*/
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