create table Ornek2
(
	ID int Unique,
	Isim nvarchar(10)
)

insert into Ornek2(ID, Isim) values (1,'Emek')
insert into Ornek2(ID, Isim) values (1,'Emek')--iki kere kullanamazs�n ayn� veriyi ��nk� unique dir
insert into Ornek2(ID, Isim) values (5,'Emek') -- bu �ekilde de ekleyemezsin

select * from Ornek2

