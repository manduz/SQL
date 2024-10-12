--iki veya daha fazla tabloyu birle�tirirken kullan�lan bir komuttur. �ki tabloyu ortak bir s�tun �zerinden birle�tirir ve her iki tabloda da e�le�en kay�tlar� d�nd�r�r. E�er bir tabloda e�le�meyen bir sat�r varsa, bu sat�r sonu�lara dahil edilmez.

select ProductSubcategoryKey from DimProduct
where ProductSubcategoryKey is not null

select ProductSubcategoryKey from DimProductSubcategory

select * from DimProduct
inner join DimProductSubcategory
on DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey


--tabloda �zellikle istenilen s�tunlar� getirtiyoruz

select DimProduct.ProductKey, DimProduct.ProductAlternateKey
from DimProduct
inner join DimProductSubcategory
on DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey


---
select DimProduct.ProductKey, DimProduct.ProductAlternateKey, DimProductSubcategory.EnglishProductSubcategoryName
from DimProduct
inner join DimProductSubcategory
on DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey

----LEftJoin
--sol (birinci) tablodaki t�m kay�tlar� d�nd�r�r ve sa� (ikinci) tabloyla e�le�en kay�tlar� getirir. E�er sa� tabloyla e�le�meyen bir sat�r varsa, bu sat�r i�in sa� tablo s�tunlar� NULL olur.
select DimProduct.ProductKey, DimProduct.ProductAlternateKey, DimProductSubcategory.EnglishProductSubcategoryName
from DimProduct
left join DimProductSubcategory
on DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey

---Right Join
--sa� (ikinci) tablodaki t�m kay�tlar� d�nd�r�r ve sol (birinci) tabloyla e�le�en kay�tlar� getirir. E�er sol tabloyla e�le�meyen bir sat�r varsa, bu sat�r i�in sol tablo s�tunlar� NULL olur.
select DP.ProductKey,
DP.ProductAlternateKey,
DPS.EnglishProductSubcategoryName
from DimProduct as DP
right join DimProductSubcategory as DPS
on DP.ProductSubcategoryKey = DPS.ProductSubcategoryKey

---full Join
--olan olmayan t�m de�erler gelir
--birbirine e�it olmayan kar��l��� NULL gelir
--hem sol hem sa� tablodaki t�m kay�tlar� d�nd�r�r. E�le�meyen kay�tlar i�in NULL de�erler g�sterilir. Yani her iki tabloda da e�le�enleri, sadece solda olanlar� ve sadece sa�da olanlar� da getirir.
select DP.ProductKey,
DP.ProductAlternateKey,
DPS.EnglishProductSubcategoryName
from DimProduct as DP
full join DimProductSubcategory as DPS
on DP.ProductSubcategoryKey = DPS.ProductSubcategoryKey




