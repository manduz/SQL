select * from DimProduct

select color, sum(SafetyStockLevel) as GuvenilirStokMiktari from DimProduct

group by Color

-------------------------------
select * from DimProduct


select Color, min(StandardCost) as EnDusuk, max(StandardCost) as EnYuksek from DimProduct

group by Color

------------------------------
select Color, min(StandardCost) as EnDusuk, max(StandardCost) as EnYuksek from DimProduct

group by Color
having
min(StandardCost) > 9 
and
max(StandardCost) < 1000
order by  min(StandardCost) asc



