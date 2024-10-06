Select * from DimProduct


--sadece kolon isimlerinde deðiþiklik yapar ProductAlternateKe bu ismin yerine UrunAnahtar, yazar EnglishProductName AS [Ingiliz Anahtar AdI] ayný þekilde deðiþtirri
select ProductAlternateKey as UrunAnahtar, --ana tabloda bir þey deðiþtirmez
EnglishProductName AS [Ingiliz Anahtar AdI]
from DimProduct  --select sutunadi


