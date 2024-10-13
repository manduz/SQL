--verilen koþulun, alt sorgudan dönen sonuçlardan herhangi biri ile eþleþip eþleþmediðini kontrol eder. Eðer alt sorgudaki herhangi bir satýr koþulu saðlýyorsa, sonuç döndürülür.

select ProductName from Products--quality 10 olanlarýn product name leri getirdi
where ProductID = any(select ProductID from [Order Details] where Quantity=10)

-----------------------------
--all
--alt sorgudan dönen tüm sonuçlar için doðru olup olmadýðýný kontrol eder.
select ProductName
from Products
where ProductID = all(select ProductID from [Order Details] where Quantity=10)






