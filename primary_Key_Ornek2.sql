create table Musteri
(
	ID int primary key,         
	Isim nvarchar(20),
	Soyisim nvarchar(20),
	Yas int
)

create table MusteriIletisim
(
	ID int,
	Tel1 nvarchar(12),
	Tel2 nvarchar(12)
	foreign key (ID) references Musteri(ID)
	-- bir tablodaki sütunun baþka bir tablodaki Primary Key ile baðlantýlý olmasýný saðlar.
    --Bu baðlantý, veritabaný iliþkilerini korur ve veri bütünlüðünü saðlar.
	--bir veritabanýnda iki tablo arasýnda iliþki kurmak için kullanýlan bir sütundur. Bu sütun, bir tablodaki verilerin baþka bir tablodaki verilerle baðlantýlý olmasýný saðlar.
)


insert into Musteri ( ID,Isim, Soyisim, Yas) values (1,'emek','manduz',29)

insert into Musteri ( ID,Isim, Soyisim, Yas) values (2,'emek','manduz',29)

insert into MusteriIletisim (ID, Tel1, Tel2) values (2, '1111111111', '2222222222')

select * from Musteri
Select * from MusteriIletisim


delete Musteri where ID = 1
delete Musteri where ID = 2 --bunda hata verir çünkü ID si 2 olaný referans aldýk
delete MusteriIletisim where ID = 2 --bu çalýþýr sonra  delete Musteri where ID = 2 bunu çalýþtýrrýsan hata vermezve çalýþýr bu kod


