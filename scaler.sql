--create function fonksiyonadi
--(
--parametreler
--)
--returns tip
--as
--begin
--fonksiyon kod
--end
alter function UrunIDIsimAl
(
	@ID int
)
returns nvarchar(200)

as
begin

declare @Isim nvarchar (200)
if(Exists(select * from DimProduct where ProductKey = @ID))--varsa
begin
select @Isim=EnglishProductName from DimProduct where ProductKey=@ID
end --EnglishProductName bu deðeri @Isim bu degere atadýðým için return kýsmýnda @Isim getiriyoruz
else
begin
set @Isim = 'ürün bilgisi bulunamadý'
end
return @Isim
end

select dbo.UrunIDIsimAl(1)



