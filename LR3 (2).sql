USE AdventureWorksLT

/*задача 1.1*/
SELECT C.CompanyName, H.SalesOrderID, H.TotalDue
FROM SalesLT.Customer as C
JOIN SalesLT.SalesOrderHeader as H
ON (C.CustomerID = H.CustomerID);

/*задача 1.2*/
SELECT C.CompanyName, H.SalesOrderID, H.TotalDue, addr.AddressLine1, addr.AddressLine2, addr.City, addr.StateProvince, addr.PostalCode, addr.CountryRegion
FROM SalesLT.Customer as C
JOIN SalesLT.SalesOrderHeader as H
ON (C.CustomerID = H.CustomerID)
LEFT OUTER JOIN SalesLT.CustomerAddress as cadd
ON (C.CustomerID = cadd.CustomerID and AddressType = 'Main Office')
LEFT OUTER JOIN SalesLT.Address as addr
ON (cadd.AddressID = addr.AddressID)

/*задача 2.1*/
SELECT FirstName, LastName, SalesOrderID, TotalDue
FROM SalesLT.Customer as cus
LEFT JOIN SalesLT.SalesOrderHeader as ord
ON (cus.CustomerID = ord.CustomerID)
ORDER BY(SalesOrderID) DESC

/*задача 2.2*/
SELECT C.CustomerID, CompanyName, FirstName, LastName, Phone
FROM SalesLT.CustomerAddress as C
LEFT OUTER JOIN SalesLT.Customer as cadd
ON (C.CustomerID = cadd.CustomerID)
/*LEFT OUTER JOIN SalesLT.Address as addr
ON (cadd.AddressID = addr.AddressID)*/
WHERE cadd.AddressID IS NULL

/*задача 2.3*/
SELECT c.CustomerID, pr.ProductID
FROM SalesLT.Customer AS c
FULL JOIN SalesLT.SalesOrderHeader AS hed
ON c.CustomerID = hed.CustomerID
FULL JOIN SalesLT.SalesOrderDetail as det
ON det.SalesOrderID = hed.SalesOrderID
FULL JOIN SalesLT.Product as pr
ON pr.ProductID = det.ProductID
WHERE c.CustomerID IS NULL OR pr.ProductID IS NULL