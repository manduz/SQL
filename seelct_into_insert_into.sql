
--Cutomers tablosundaki verileri kopyalýyoruz
select * into CustomersBackUp2024  from Customers

--belirli kolonlarý almak istersem

select CompanyName, ContactName into CustomersBackUp2024NEw from Customers

-----------------------------
--emektable 'a bir column aktarýyoruz

insert into emekTable(ID)
select CompanyName from Customers;




