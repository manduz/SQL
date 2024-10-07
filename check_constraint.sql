create table Ornek4
(
	ID int primary key,
	ISim nvarchar(20),
	Soyisim nvarchar(20),
	Yas int check(Yas>10)--tabloda yaþýný 10 dan küçük koyamazsýn demek oluyor
)

insert into Ornek4(ID,Isim, Soyisim,Yas) values(2,'Emek','Manduz',5)

select * from Ornek4


