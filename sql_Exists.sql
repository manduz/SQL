--b�yle bir kay�t var m�? sorusunun cevab�n� arar�z

select ContactName from Suppliers
where Exists
(select ProductName from Products where Products.SupplierID = Suppliers.SupplierID);





