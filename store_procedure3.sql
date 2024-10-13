exec SelectAllCustomers;
------------------------------------------

create procedure SelectAllCustomersWithOneParametre @City nvarchar(50)
as
select * from Customers
where City = @City --@city parametre
go

-----------------------------------
--yukardaki kodu þimdi çalýþtýrýyruz

exec SelectAllCustomersWithOneParametre @City = 'Berlin'



--------------------------------------------
create procedure SelectAllCustomersWithMultipleParametre @City nvarchar(50), @PostalCode nvarchar(50)
as
select * from Customers
where City = @City and PostalCode = @PostalCode
go


exec SelectAllCustomersWithMultipleParametre @City = 'London' , @PostalCode = 'WA1 1DP'
