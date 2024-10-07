create table Ornek3
(
	ID int primary key,         --boþ olamaz ve unique dir
	Isim nvarchar(20),
	Soyisim nvarchar(20),
	Yas int
)

insert into Ornek3 ( ID,Isim, Soyisim, Yas) values (1,'emek','manduz',29)

insert into Ornek3 ( ID,Isim, Soyisim, Yas) values (2,'emek','manduz',29) --bunu tekrar ekleyip çalýþtýrýnca hata verir ama 1 yerine 2 yazarsan hata vermez


select * from Ornek3
