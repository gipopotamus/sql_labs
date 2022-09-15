USE AdventureWorksLT;
-- Задача 1
--пункт 1
SELECT * 
FROM SalesLT.Customer
--пункт 2
SELECT Title, FirstName, MiddleName, LastName, Suffix 
FROM SalesLT.Customer
--пункт 3
SELECT SalesPerson,ISNULL(Title, FirstName) + ' ' + LastName as CustomerName, Phone
FROM SalesLT.Customer


-- Задача 2
--пункт3
SELECT CAST(CustomerID as nvarchar) + ':' + CompanyName as CustomerCompany
FROM SalesLT.Customer
--пункт 2
SELECT CONVERT(varchar(10), SalesOrderID) + '(' + CONVERT(varchar(10), RevisionNumber) + ')'  as OrderRevision, CONVERT(date, OrderDate) as OrderDate
FROM SalesLT.SalesOrderHeader


--Задача 3


-- Пункт 1
SELECT FirstName + ' ' + ISNULL(MiddleName, '') + ' ' + LastName as CustomerName 
FROM SalesLT.Customer


-- Пункт 2
SELECT CustomerID, ISNULL(EmailAddress, Phone) as PrimaryContact 
FROM SalesLT.Customer


-- Пункт 3
SELECT IIF(ShipDate IS NULL, 'AwaitingShipment', 'Shipped') as ShippingStatus 
FROM SalesLT.SalesOrderHeader;