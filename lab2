--- 1
select Color, count(*) from Production.Product where ListPrice >= 30 group by Color;

--- 2
select Color from Production.Product group by color having min(ListPrice) > 100;

--- 3
select ProductSubcategoryID, count(*) as cnt from Production.Product where ProductSubcategoryID is not null group by ProductSubcategoryID;

--- 4
select ProductID, count(*) from Sales.SalesOrderDetail group by ProductID;

--- 5
select ProductID, count(*) from Sales.SalesOrderDetail group by ProductID having count(*) > 5;

--- 6
select CustomerID from Sales.SalesOrderHeader group by CustomerID, OrderDate having count(*) > 1;

--- 7
select SalesOrderID from Sales.SalesOrderDetail group by SalesOrderID having count(*) > 3;

--- 8
select ProductID, count(distinct SalesOrderID) from Sales.SalesOrderDetail group by ProductID having count(distinct SalesOrderID) > 3;

--- 9
select ProductID, count(distinct SalesOrderID) from Sales.SalesOrderDetail group by ProductID having count(distinct SalesOrderID) = 3 or count(distinct SalesOrderID) = 5;

--- 10
select ProductSubcategoryID, count(distinct ProductID) from Production.Product group by ProductSubcategoryID having count(distinct ProductId) > 10;

--- 11
select ProductID, max(OrderQty) from Sales.SalesOrderDetail group by ProductID having max(OrderQty) = 1;

--- 12
select top 1 SalesOrderID from Sales.SalesOrderDetail group by SalesOrderID order by count(distinct ProductID) desc;

--- 13
select top 1 SalesOrderID from Sales.SalesOrderDetail group by SalesOrderID order by sum(UnitPrice * OrderQty) desc;

--- 14
select ProductSubcategoryID, count(*) from Production.Product where Color is not null and ProductSubcategoryID is not null group by ProductSubcategoryID;

--- 15
select Color, count(*) from Production.Product group by Color order by count(*) desc;

--- 16
select ProductID from Sales.SalesOrderDetail where OrderQty > 1 group by ProductID having count(distinct SalesOrderID) > 2;
