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
	-- bir tablodaki s�tunun ba�ka bir tablodaki Primary Key ile ba�lant�l� olmas�n� sa�lar.
    --Bu ba�lant�, veritaban� ili�kilerini korur ve veri b�t�nl���n� sa�lar.
	--bir veritaban�nda iki tablo aras�nda ili�ki kurmak i�in kullan�lan bir s�tundur. Bu s�tun, bir tablodaki verilerin ba�ka bir tablodaki verilerle ba�lant�l� olmas�n� sa�lar.
)


insert into Musteri ( ID,Isim, Soyisim, Yas) values (1,'emek','manduz',29)

insert into Musteri ( ID,Isim, Soyisim, Yas) values (2,'emek','manduz',29)

insert into MusteriIletisim (ID, Tel1, Tel2) values (2, '1111111111', '2222222222')

select * from Musteri
Select * from MusteriIletisim


delete Musteri where ID = 1
delete Musteri where ID = 2 --bunda hata verir ��nk� ID si 2 olan� referans ald�k
delete MusteriIletisim where ID = 2 --bu �al���r sonra  delete Musteri where ID = 2 bunu �al��t�rr�san hata vermezve �al���r bu kod


