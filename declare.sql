---yeni bir de�i�ken olu�turma i�lemlerinde declare kullan�rl�r

--declare @de�i�kenadi nvarchar(50)
--set @de�i�kenadi = 'emek manduz'

declare @TamISim nvarchar(30)
set @TamISim = 'emek manduz'
print @TamISim


-----------
declare @ToplamKayitSayisi int 
select @ToplamKayitSayisi = count(*) from DimProduct
print @ToplamKayitSayisi

---declare ile tablo olu�turma
declare @personel table
(
	ID int,
	Isim nvarchar(20),
	Soyisim nvarchar(30)

)
insert into @personel(ID,Isim,Soyisim) values(1,'emek','manduz')

select * from @personel

--update i�in
update @personel set Isim = 'Ay�e' where ID=1

select * from @personel

delete @personel where ID=1
select * from @personel
