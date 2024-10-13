create table #personel
(
	ID int primary key,
	Isim nvarchar (20) not null,
	Soyisim nvarchar(20) not null

)
insert into #personel(ID, Isim, Soyisim) values (1,'emek','manduz')
insert into #personel(ID, Isim, Soyisim) values (2,'emek','manduz')

select * from #personel

update #personel
set
Isim = 'veliii'
where ID = 1

delete #personel
where
ID = 2


--try catch
--begin try
--iþlemler
--end try
--begin catch
--hata
--end catch

begin try
insert into #personel(ID,Isim,Soyisim) values (3,'emek','veli')
end try
begin catch
	print 'hata oluþtu'
end catch

