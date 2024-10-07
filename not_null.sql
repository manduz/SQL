--ID noþ olmayack anlamý verir

create table Ornek1
(
	ID int not null,
	Isim nvarchar(10)
)

insert into Ornek1(ID,Isim) values (1,'Emek')
insert into Ornek1(Isim) values ('Manduz')--bu kod satýrý hata verir
