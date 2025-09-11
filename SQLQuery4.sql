USE Northwind
Go

SELECT * FROM Categories
SELECT * FROM Products

SELECT Products.ProductName, Categories.CategoryName
From Products
INNER JOIN Categories ON Products.CategoryID=Categories.CategoryID



SELECT P.ProductName, C.CategoryName
From Products P
INNER JOIN Categories C ON P.CategoryID=C.CategoryID

SELECT * FROM Products WHERE CategoryID IS NULL


SELECT P.Productname,O.orderid,O.orderdate
FROM Products P
LEFT JOIN [Order Details] OD ON P.ProductID=OD.ProductID
INNER JOIN Orders O  ON  OD.OrderID=O.OrderID
