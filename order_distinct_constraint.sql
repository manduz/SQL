select EnglishProductName,SafetyStockLevel,ProductAlternateKey from DimProduct
--order by EnglishProductName asc   --asc a dan z ye s�ralar ilgili kolonu
--sorgu sonucunda d�nd�r�len verilerin s�ralanmas� i�in kullan�l�r. Varsay�lan olarak artan s�rada s�ralama (ASC - ascending) yapar, ancak DESC (descending) kullanarak azalan s�raya g�re de s�ralanabilir.
order by EnglishProductName desc  --sondan a ya do�ru s�ralar


select EnglishProductName,SafetyStockLevel,ProductAlternateKey from DimProduct
order by EnglishProductName,ProductAlternateKey asc

