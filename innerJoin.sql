--iki veya daha fazla tabloyu birleþtirirken kullanýlan bir komuttur. Ýki tabloyu ortak bir sütun üzerinden birleþtirir ve her iki tabloda da eþleþen kayýtlarý döndürür. Eðer bir tabloda eþleþmeyen bir satýr varsa, bu satýr sonuçlara dahil edilmez.

select ProductSubcategoryKey from DimProduct
where ProductSubcategoryKey is not null

select ProductSubcategoryKey from DimProductSubcategory

select * from DimProduct
inner join DimProductSubcategory
on DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey


--tabloda özellikle istenilen sütunlarý getirtiyoruz

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
--sol (birinci) tablodaki tüm kayýtlarý döndürür ve sað (ikinci) tabloyla eþleþen kayýtlarý getirir. Eðer sað tabloyla eþleþmeyen bir satýr varsa, bu satýr için sað tablo sütunlarý NULL olur.
select DimProduct.ProductKey, DimProduct.ProductAlternateKey, DimProductSubcategory.EnglishProductSubcategoryName
from DimProduct
left join DimProductSubcategory
on DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey

---Right Join
--sað (ikinci) tablodaki tüm kayýtlarý döndürür ve sol (birinci) tabloyla eþleþen kayýtlarý getirir. Eðer sol tabloyla eþleþmeyen bir satýr varsa, bu satýr için sol tablo sütunlarý NULL olur.
select DP.ProductKey,
DP.ProductAlternateKey,
DPS.EnglishProductSubcategoryName
from DimProduct as DP
right join DimProductSubcategory as DPS
on DP.ProductSubcategoryKey = DPS.ProductSubcategoryKey

---full Join
--olan olmayan tüm deðerler gelir
--birbirine eþit olmayan karþýlýðý NULL gelir
--hem sol hem sað tablodaki tüm kayýtlarý döndürür. Eþleþmeyen kayýtlar için NULL deðerler gösterilir. Yani her iki tabloda da eþleþenleri, sadece solda olanlarý ve sadece saðda olanlarý da getirir.
select DP.ProductKey,
DP.ProductAlternateKey,
DPS.EnglishProductSubcategoryName
from DimProduct as DP
full join DimProductSubcategory as DPS
on DP.ProductSubcategoryKey = DPS.ProductSubcategoryKey




