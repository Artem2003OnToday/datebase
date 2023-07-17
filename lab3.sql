--- 1
select product.Name, category.Name from Production.Product as product
    join Production.ProductSubcategory as subcategory
        on product.ProductSubcategoryID = subcategory.ProductSubcategoryID
    join Production.ProductCategory as category
        on subcategory.ProductCategoryID = category.ProductCategoryID
where product.Color = 'Red' and product.ListPrice >= 100;

--- 2
select p1.Name from Production.Product as p1, Production.Product as p2
where p1.ProductID != p2.ProductID and p1.Name = p2.Name;

--- 3
select category.Name, count(*) from Production.ProductCategory as category
    join Production.ProductSubcategory as subcategory
        on category.ProductCategoryID = subcategory.ProductCategoryID
    join Production.Product as product
        on subcategory.ProductSubcategoryID = product.ProductSubcategoryID
group by category.Name;

--- 4
select subcategory.Name, count(distinct product.ProductID) from Production.ProductSubcategory as subcategory
    join Production.Product as product
        on subcategory.ProductSubcategoryID = product.ProductSubcategoryID
group by subcategory.Name;

--- 5
select top 3 with ties subcategory.Name, count(distinct product.ProductID) as ProductCount from Production.ProductSubcategory as subcategory
    join Production.Product as product
        on subcategory.ProductSubcategoryID = product.ProductSubcategoryID
group by subcategory.Name
order by count(distinct product.ProductID) asc;

--- 6
select subcategory.Name, max(product.ListPrice) from Production.ProductSubcategory as subcategory
    join Production.Product as product
        on subcategory.ProductSubcategoryID = product.ProductSubcategoryID
where product.Color = 'Red'
group by subcategory.Name;

--- 7
select vendor.Name, count(distinct ProductID) from Purchasing.ProductVendor as pvendor
    join Purchasing.Vendor as vendor
        on vendor.BusinessEntityID = pvendor.BusinessEntityID
group by vendor.Name;

--- 8
select product.Name from Purchasing.ProductVendor as pvendor
    join Production.Product as product
        on pvendor.ProductID = product.ProductID
group by product.Name
having count(distinct pvendor.BusinessEntityID) > 1;

--- 9
select top 1 with ties product.Name, sum(detail.OrderQty) from Sales.SalesOrderDetail as detail
    join Production.Product as product
        on product.ProductID = detail.ProductID
group by product.Name
order by sum(detail.OrderQty) desc;

--- 10
select top 1 with ties category.Name, sum(detail.OrderQty) from Production.ProductCategory as category
    join Production.ProductSubcategory as subcategory
        on category.ProductCategoryID = subcategory.ProductCategoryID
    join Production.Product as product
        on subcategory.ProductSubcategoryID = product.ProductSubcategoryID
    join Sales.SalesOrderDetail as detail
        on product.ProductID = detail.ProductID
group by category.Name
order by sum(detail.OrderQty) desc;

--- 11
select category.Name, count(distinct subcategory.ProductSubcategoryID), count(distinct product.ProductID)
from Production.ProductCategory as category
    join Production.ProductSubcategory as subcategory
        on category.ProductCategoryID = subcategory.ProductCategoryID
    join Production.Product as product
        on subcategory.ProductSubcategoryID = product.ProductSubcategoryID
group by category.Name;

--- 12
select vendor.CreditRating, count(product.ProductID) from Purchasing.Vendor as vendor
    join Purchasing.ProductVendor as pvendor
        on vendor.BusinessEntityID = pvendor.BusinessEntityID
    join Production.Product as product
        on pvendor.ProductID = product.ProductID
group by vendor.CreditRating;
