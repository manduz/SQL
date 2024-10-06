-- % : birden fazla bilinmeyen karakteri temsil eder
-- _ : sadece tek bir karakteri temsil eder

select EnglishProductName
from DimProduct
where
EnglishProductName like '%a%' --içinde a geçenleri getirir



select EnglishProductName
from DimProduct
where
EnglishProductName not like '%d%' --içinde d geçmeyenleri getirir


select EnglishProductName
from DimProduct
where
EnglishProductName not like 'L%' --baþýnda L ile baþlayanlar getirir



select EnglishProductName
from DimProduct
where
EnglishProductName like '%D' --sonu D ile bitenleri getirir



select EnglishProductName
from DimProduct
where
EnglishProductName like '____e' --ilk 4 karakterden sonra e ile biten


