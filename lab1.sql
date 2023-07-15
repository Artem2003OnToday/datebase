--- 1
select Name, Color, Size from Production.Product;

--- 2
select Name, Color, Size from Production.Product where ListPrice > 100;

--- 3
select Name, Color, Size from Production.Product where ListPrice < 100 and Color = 'Black';

--- 4
select Name, Color, Size from Production.Product where ListPrice < 100 and Color = 'Black' order by ListPrice desc;

--- 5
select top 3 with ties Name, Color, Size, ListPrice from Production.Product order by ListPrice desc;

--- 6
select Color, Size from Production.Product where Color is not null and Size is not null;

--- 7
select distinct Color from Production.Product where ListPrice between 10 and 50 and Color is not null;

--- 8
select Color from Production.Product where Name like 'L_N%';

--- 9
select Name from Production.Product where (Name like 'D__%' or Name like 'M__%');

--- 10
select Name from Production.Product where datepart(YEAR, SellStartDate) <= 2012;

--- 11
select Name from Production.ProductSubCategory;

--- 12
select Name from Production.ProductCategory;

--- 13
select FirstName from Person.Person where Title = 'Mr.';

--- 14
select FirstName from Person.Person where Title is null;
