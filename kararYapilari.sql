declare @KullaniciAdi nvarchar(20), @Sifre nvarchar(30)
set @KullaniciAdi = 'emek'
set @Sifre = '123456'


if @KullaniciAdi = 'emek' and @Sifre = '123456'
begin
	print 'kullanýcý giriþ baþarýlý'
end

else
begin
	print 'kullanýcý giriþ baþarýsýz'
end


----------ornek2
declare @toplamKayitSayisi int
select @toplamKayitSayisi = count(*) from DimProduct 
print @toplamKayitSayisi

if @toplamKayitSayisi<= 100
begin
	print 'toplam sayi 100 den küçük veya eþit'
end
 else if @toplamKayitSayisi > 100 and @toplamKayitSayisi <= 200
 begin
	print '100-200 arasýnda'
end

else
begin
	print '200 den büyük'
end


