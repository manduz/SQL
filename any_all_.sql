--verilen ko�ulun, alt sorgudan d�nen sonu�lardan herhangi biri ile e�le�ip e�le�medi�ini kontrol eder. E�er alt sorgudaki herhangi bir sat�r ko�ulu sa�l�yorsa, sonu� d�nd�r�l�r.

select ProductName from Products--quality 10 olanlar�n product name leri getirdi
where ProductID = any(select ProductID from [Order Details] where Quantity=10)

-----------------------------
--all
--alt sorgudan d�nen t�m sonu�lar i�in do�ru olup olmad���n� kontrol eder.
select ProductName
from Products
where ProductID = all(select ProductID from [Order Details] where Quantity=10)






