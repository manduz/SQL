
--Cutomers tablosundaki verileri kopyal�yoruz
select * into CustomersBackUp2024  from Customers

--belirli kolonlar� almak istersem

select CompanyName, ContactName into CustomersBackUp2024NEw from Customers

-----------------------------
--emektable 'a bir column aktar�yoruz

insert into emekTable(ID)
select CompanyName from Customers;




