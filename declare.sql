---yeni bir deðiþken oluþturma iþlemlerinde declare kullanýrlýr

--declare @deðiþkenadi nvarchar(50)
--set @deðiþkenadi = 'emek manduz'

declare @TamISim nvarchar(30)
set @TamISim = 'emek manduz'
print @TamISim


-----------
declare @ToplamKayitSayisi int 
select @ToplamKayitSayisi = count(*) from DimProduct
print @ToplamKayitSayisi

---declare ile tablo oluþturma
declare @personel table
(
	ID int,
	Isim nvarchar(20),
	Soyisim nvarchar(30)

)
insert into @personel(ID,Isim,Soyisim) values(1,'emek','manduz')

select * from @personel

--update için
update @personel set Isim = 'Ayþe' where ID=1

select * from @personel

delete @personel where ID=1
select * from @personel
