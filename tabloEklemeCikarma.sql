--tablo ekleme ��karma

use SQLFULL

GO

create table Personel1
(
	PersonelID int,
	Is�m nvarchar(40),
	soyisim nvarchar(40),
	EmailAdres nvarchar(60)
)

--yeni kolon eklemek i�in
Alter table Personel1
Add TelefonNumarasi nvarchar(12)


--de�i�iklik i�in
Alter table Personel1
Drop column TelefonNumarasi

--tablo silme
drop table Personel1