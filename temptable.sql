--local temp table
--global temp table

--CREATE: Veritabanýnda kalýcý nesneler (tablolar, prosedürler vb.) oluþturur. Bu nesneler veritabanýnda kalýr.
--DECLARE: Geçici deðiþkenler tanýmlar, bu deðiþkenler yalnýzca bir oturum ya da iþlem süresince geçerli olur ve kalýcý deðildir.

--SQL'de sadece mevcut oturum veya iþlem süresince var olan, geçici veri saklama amacýyla kullanýlan bir tablodur. Oturum sona erdiðinde veya iþlem tamamlandýðýnda geçici tablo otomatik olarak silinir. Bu tablolar, genellikle karmaþýk sorgularýn ara sonuçlarýný depolamak, geçici veri iþlemek veya sorgu performansýný artýrmak için kullanýlýr.
--# ile kullanýlýr
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


