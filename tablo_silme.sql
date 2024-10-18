
--tablo silme iþlemi kod ile
--drop table TabloAdi


--tablo kolon ekleme çýkarma gibi güncelleme yapýlmasý için alter kullanýyoruz

alter table People
add Email varchar(50)

--kolon çýkar
alter table People
drop Column Email


--modify etmek için
alter table People
alter column LastName varchar(MAX)


