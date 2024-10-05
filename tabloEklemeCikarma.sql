--tablo ekleme çýkarma

use SQLFULL

GO

create table Personel1
(
	PersonelID int,
	Isým nvarchar(40),
	soyisim nvarchar(40),
	EmailAdres nvarchar(60)
)

--yeni kolon eklemek için
Alter table Personel1
Add TelefonNumarasi nvarchar(12)


--deðiþiklik için
Alter table Personel1
Drop column TelefonNumarasi

--tablo silme
drop table Personel1