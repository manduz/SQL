
--tablo silme i�lemi kod ile
--drop table TabloAdi


--tablo kolon ekleme ��karma gibi g�ncelleme yap�lmas� i�in alter kullan�yoruz

alter table People
add Email varchar(50)

--kolon ��kar
alter table People
drop Column Email


--modify etmek i�in
alter table People
alter column LastName varchar(MAX)


