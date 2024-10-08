select COUNT( DISTINCT Country) from Customers --cýktýsý 21 farklý country olduðunu söyler
---------------------------------

select top 10 * from Customers --ilk 10 elemaný getirir.
--------------------------------

select top 15 City from Customers
order by City desc


---------------
select * from DimProduct

select sum(safetyStockLevel) from DimProduct --bir sütundaki tüm deðerlerin toplamýný almak için kullanýlýr


