-- % : birden fazla bilinmeyen karakteri temsil eder
-- _ : sadece tek bir karakteri temsil eder

select EnglishProductName
from DimProduct
where
EnglishProductName like '%a%' --i�inde a ge�enleri getirir



select EnglishProductName
from DimProduct
where
EnglishProductName not like '%d%' --i�inde d ge�meyenleri getirir


select EnglishProductName
from DimProduct
where
EnglishProductName not like 'L%' --ba��nda L ile ba�layanlar getirir



select EnglishProductName
from DimProduct
where
EnglishProductName like '%D' --sonu D ile bitenleri getirir



select EnglishProductName
from DimProduct
where
EnglishProductName like '____e' --ilk 4 karakterden sonra e ile biten


