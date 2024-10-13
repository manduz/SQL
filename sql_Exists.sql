--böyle bir kayýt var mý? sorusunun cevabýný ararýz

select ContactName from Suppliers
where Exists
(select ProductName from Products where Products.SupplierID = Suppliers.SupplierID);





