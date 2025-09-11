USE Northwind
GO

SELECT * FROM Products

SELECT CATEGORYID, SUM(UNITSINSTOCK) AS [TOTAL DE UNIDADES]
FROM Products
GROUP BY CATEGORYID
--CALCULAR EL PRECIO UNITARIO PROMEDIO POR CATEGORIA--

SELECT CATEGORYID, AVG(UnitPrice) AS [PRECIO UNITARIO PROMEDIO]
FROM Products
GROUP BY CATEGORYID

--CALCULAR EL STOCK VALORIZADO DE LOS PRODUCTOS POR CATEGORIA--

SELECT CATEGORYID, SUM(UnitsInStock*UnitPrice) AS [Stock valorizado]
FROM Products
GROUP BY CATEGORYID

SELECT * FROM Orders

SELECT CustomerID, OrderID AS [ORDERS]
FROM Orders
ORDER BY CustomerID DESC, OrderID ASC

--SELECCIONAR LA CANTIDAD DE PEDIDOS POR CODCLIENTE--

SELECT CustomerID, COUNT(OrderID) AS [Cantidad de pedidos]
FROM Orders
GROUP BY CustomerID

SELECT * FROM [Order Details]

SELECT OrderID, ProductID, UnitPrice, Quantity, Discount, UnitPrice*Quantity AS 'Subtotal'
FROM [Order Details]

SELECT OrderID, ProductID, UnitPrice, Quantity, Discount, UnitPrice*Quantity AS 'Subtotal', Discount*(UnitPrice*Quantity) AS 'Descuento', 
FROM [Order Details]

--MOSTRAR LO QUE PAGO EL CLIENTE POR PRODUCTO)

SELECT OrderID, ProductID, UnitPrice, Quantity, Discount,
	UnitPrice*Quantity AS 'Subtotal',
	Discount*(UnitPrice*Quantity) AS 'Descuento',
	(UnitPrice*Quantity)*(1-Discount) AS 'DSC SOLES'
FROM [Order Details]


SELECT CustomerID, COUNT(OrderID)
FROM Orders
GROUP BY CustomerID

--clientes +4 pedidos--

SELECT CustomerID, COUNT(OrderID) AS 'Cantidad pedidos'
FROM Orders
GROUP BY CustomerID
HAVING COUNT(CustomerID)>4
ORDER BY [Cantidad pedidos]










USE Northwind
Go

--cadenas de texto--

SELECT CHARINDEX('ANA', 'BANANA')
SELECT CONCAT (3,2)
SELECT LEN('BANANA')
SELECT LEFT('BANANA', 4)
SELECT RIGHT('BANANA', 4)
SELECT CEILING(3.14)
SELECT FLOOR(3.14)
SELECT ROUND(3.14,0)