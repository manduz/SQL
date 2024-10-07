select EnglishProductName,SafetyStockLevel,ProductAlternateKey from DimProduct
--order by EnglishProductName asc   --asc a dan z ye sýralar ilgili kolonu
--sorgu sonucunda döndürülen verilerin sýralanmasý için kullanýlýr. Varsayýlan olarak artan sýrada sýralama (ASC - ascending) yapar, ancak DESC (descending) kullanarak azalan sýraya göre de sýralanabilir.
order by EnglishProductName desc  --sondan a ya doðru sýralar


select EnglishProductName,SafetyStockLevel,ProductAlternateKey from DimProduct
order by EnglishProductName,ProductAlternateKey asc

