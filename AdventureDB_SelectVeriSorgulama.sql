Select * from DimProduct


--sadece kolon isimlerinde de�i�iklik yapar ProductAlternateKe bu ismin yerine UrunAnahtar, yazar EnglishProductName AS [Ingiliz Anahtar AdI] ayn� �ekilde de�i�tirri
select ProductAlternateKey as UrunAnahtar, --ana tabloda bir �ey de�i�tirmez
EnglishProductName AS [Ingiliz Anahtar AdI]
from DimProduct  --select sutunadi


