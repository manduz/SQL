--local temp table
--global temp table

--CREATE: Veritaban�nda kal�c� nesneler (tablolar, prosed�rler vb.) olu�turur. Bu nesneler veritaban�nda kal�r.
--DECLARE: Ge�ici de�i�kenler tan�mlar, bu de�i�kenler yaln�zca bir oturum ya da i�lem s�resince ge�erli olur ve kal�c� de�ildir.

--SQL'de sadece mevcut oturum veya i�lem s�resince var olan, ge�ici veri saklama amac�yla kullan�lan bir tablodur. Oturum sona erdi�inde veya i�lem tamamland���nda ge�ici tablo otomatik olarak silinir. Bu tablolar, genellikle karma��k sorgular�n ara sonu�lar�n� depolamak, ge�ici veri i�lemek veya sorgu performans�n� art�rmak i�in kullan�l�r.
--# ile kullan�l�r
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


