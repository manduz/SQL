
select DPC.EnglishProductCategoryName as [Ana Kategori Adi],
DPS.EnglishProductSubcategoryName as [Alt Kategori Adi],
DP.Color as RENK
from DimProduct as DP 
inner join DimProductSubcategory as DPS
on DP.ProductSubcategoryKey = DPS.ProductSubcategoryKey
inner join DimProductCategory as DPC
on DPS.ProductCategoryKey = DPC.ProductCategoryKey

GROUP BY DPC.EnglishProductCategoryName,DPS.EnglishProductSubcategoryName,DP.Color


-----stok adedi için

select DPC.EnglishProductCategoryName as [Ana Kategori Adi],
DPS.EnglishProductSubcategoryName as [Alt Kategori Adi],
DP.Color as RENK,
sum(DP.ProductKey) as [Toplam Adet],
AVG(DP.SafetyStockLevel) as [ortalama stok adedi]
from DimProduct as DP 
inner join DimProductSubcategory as DPS
on DP.ProductSubcategoryKey = DPS.ProductSubcategoryKey
inner join DimProductCategory as DPC
on DPS.ProductCategoryKey = DPC.ProductCategoryKey

GROUP BY DPC.EnglishProductCategoryName,DPS.EnglishProductSubcategoryName,DP.Color


