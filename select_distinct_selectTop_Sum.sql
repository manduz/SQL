select COUNT( DISTINCT Country) from Customers --c�kt�s� 21 farkl� country oldu�unu s�yler
---------------------------------

select top 10 * from Customers --ilk 10 eleman� getirir.
--------------------------------

select top 15 City from Customers
order by City desc


---------------
select * from DimProduct

select sum(safetyStockLevel) from DimProduct --bir s�tundaki t�m de�erlerin toplam�n� almak i�in kullan�l�r


