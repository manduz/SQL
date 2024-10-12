--begin
--kodlar
--end

declare @Isim nvarchar(20) = 'emek manduz'
declare @sayac int = 0

while @sayac <= len(@Isim)
begin
	print substring(@Isim,1,@sayac) --SUBSTRING(string, start, length)
	set @sayac += 1
end

print 'while iþlemi bitti'


