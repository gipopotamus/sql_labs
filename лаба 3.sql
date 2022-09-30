USE AdventureWorksLT

--Задание 1

--Подзадание 1
SELECT CompanyName, SalesOrderID, TotalDue
FROM SalesLT.Customer AS Cust
JOIN SalesLT.SalesOrderHeader AS Header
ON Cust.CustomerID = Header.CustomerID

--Подздание 2
SELECT CompanyName, SalesOrderID, TotalDue, AddressLine1, AddressLine2, City, StateProvince ,CountryRegion, PostalCode
FROM SalesLT.Customer AS Cust
JOIN SalesLT.SalesOrderHeader AS SalOrd
ON Cust.CustomerID = SalOrd.CustomerID
JOIN SalesLT.CustomerAddress AS CustAdd
ON CustAdd.CustomerID = SalOrd.CustomerID
JOIN SalesLT.Address AS Adr
ON CustAdd.AddressID = Adr.AddressID
WHERE AddressType = 'Main Office'

--Задание 2

--Подзадание 1
SELECT CompanyName, CONCAT(FirstName,' ', LastName) AS Name, SalesOrderID, TotalDue, 
IIF (EmailAddress IS NULL, Phone, CONCAT(EmailAddress, ':', Phone)) AS Contact
FROM SalesLT.Customer AS SalCust
LEFT JOIN SalesLT.SalesOrderHeader AS SalOrd
ON SalCust.CustomerID = SalOrd.CustomerID ORDER BY SalesOrderID DESC


--Подзадание 2
SELECT Cust.CustomerID, CompanyName, CONCAT(FirstName,' ', LastName) AS FullName, Phone
FROM SalesLT.Customer AS Cust
LEFT JOIN SalesLT.CustomerAddress AS Cadd
ON Cust.CustomerID = Cadd.CustomerID WHERE Cadd.CustomerID IS NULL

--Подзадание 3
SELECT Cust.CustomerID, SalOrd.SalesOrderID+PrId.ProductID AS ProductID
FROM SalesLT.Customer AS Cust
LEFT JOIN SalesLT.SalesOrderHeader AS SalOrd
ON Cust.CustomerID = SalOrd.CustomerID
LEFT JOIN SalesLT.SalesOrderDetail AS PrId
ON PrId.SalesOrderID = SalOrd.SalesOrderID
FULL JOIN SalesLT.Product AS SalPrd
ON SalPrd.ProductID = PrId.ProductID WHERE PrId.ProductID IS NULL AND SalOrd.CustomerID IS NULL