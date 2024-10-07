create view [Product Above Average Price]
AS
select * from Products
where UnitPrice > (select AVG(UnitPrice) from Products) --avg ortalama
