USE Northwind
go
SELECT * from Customers
go

Select	ProductID as 'CODIGO PRODUCTO',
		ProductName 'PRODUCTO',
		UnitPrice [PRECIO UNITARIO]
From Products
go

Select	ORDERID, PRODUCTID, UNITPRICE, QUANTITY, DISCOUNT, UNITPRICE*QUANTITY 'SUBTOTAL'
From [Order Details]
go