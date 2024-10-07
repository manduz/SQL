create table Ornek2
(
	ID int Unique,
	Isim nvarchar(10)
)

insert into Ornek2(ID, Isim) values (1,'Emek')
insert into Ornek2(ID, Isim) values (1,'Emek')--iki kere kullanamazsýn ayný veriyi çünkü unique dir
insert into Ornek2(ID, Isim) values (5,'Emek') -- bu þekilde de ekleyemezsin

select * from Ornek2

