create table Musteri
(
	ID int primary key,
	isim varchar(20),
	soyisim varchar(20),
	email varchar(50) default 'emek@gmail.com',
	olusturmaTarihi datetime default getdate()
)

create table MusteriGirisBilgileri
(
	MID int primary key,
	KullaniciAdi varchar(20) unique not null,
	sifre varchar(20) check(Len(sifre)>6),
	GizliSoru varchar(50),
	cevap varchar(40)
	foreign key (MID) references Musteri(ID)
)

--create proc/procedure
--Procedure'ler, tekrarlayan iþlemleri otomatik hale getirmek, karmaþýk sorgularý sadeleþtirmek ve veritabaný üzerinde performans optimizasyonu saðlamak için kullanýlýr.
--Güncelleme, ekleme, silme gibi iþlemleri topluca gerçekleþtirmek.

create procedure SP_Musteri_YeniKayit
(
	--@ ile baþlayanlar parametre
	@ID int,
	@isim nvarchar(20),
	@soyisim nvarchar(20),
	@email nvarchar(60),
	@kullaniciAdi nvarchar(20),
	@sifre nvarchar(10),
	@gizliSoru nvarchar(20),
	@cevap nvarchar(20)
)
as
begin
insert into Musteri(ID,isim,soyisim,email) values (@ID,@isim,@soyisim,@email)
	if(@@ROWCOUNT > 0)
	begin
		insert into MusteriGirisBilgileri(MID,KullaniciAdi,sifre,GizliSoru,cevap) values (@ID,@KullaniciAdi,@sifre,@GizliSoru,@cevap)
	end


end


create table  Urun
(
	UrunID int primary key,
	Tanim varchar(20) not null,
	Adet int check(Adet > 0)	
)

create proc SP_Urun_YeniKayit
(
	@UrunID int,
	@Tanim varchar(20),
	@Adet int
)
as
begin
insert into Urun(UrunID, Tanim, Adet) values (@UrunID,@Tanim,@Adet)
end


create proc SP_urun_kayitDuzenle
(
	@UrunID int,
	@Tanim varchar(20),
	@Adet int
)
as
begin
	update Urun	set Tanim = @Tanim , Adet = @Adet where @UrunID = @UrunID
end


create proc SP_Urun_Sil
(
	@UrunId int
)
as
begin
DELETE Urun where UrunId = @UrunId
end

--urun listele
create proc SP_Urun_Listele
as
begin
	select * from Urun
end

--tek bir urunun kayýtlarýna ulaþmak için
create proc SP_Urun_TekKayit
(
	@UrunID int
)
as
begin
	select * from Urun where UrunID = @UrunID
end


create table Satis
(
	ID int primary key,
	MID int not null,
	UID int not null,
	SatilanAdet int check(SatilanAdet > 0)
)


create proc SP_Satis_YeniKayit
(
	@ID int,
	@MID int,
	@UID int,
	@SatilanAdet int
)
as
begin
	insert into Satis(ID,MID,UID,SatilanAdet) values (@ID,@MID,@UID,@SatilanAdet)
end

--satis kaydýný oluþturmak için
create proc SP_Satis_KayitDuzenle
(
	@ID int,
	@MID int,
	@UID int,
	@SatilanAdet int
)
as
begin
	update Satis 
	set
	MID =@MID, UID = @UID, SatilanAdet = @SatilanAdet
	where
	ID = @ID --ID , parametre olarak gelen @ID ye eþit olduðunda tabloyu güncelle diyoruz
end

--kayýt sil
alter proc SP_Satis_KayitSil
(
	@ID int
)
/*with encryption*/ --burayý böyle yazýnca modify kýsmýný açamýyorsun
as
begin
DELETE Satis
where ID = @ID
end

