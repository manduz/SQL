--select case kolonAdi
--when 'RED' then 'kýrmýzý'  --red ise kýrmýzý yap demektir
--else
--end


select distinct(color) from DimProduct

select EnglishProductName, (case color
when 'Black' then 'Siyah'
when 'White' then 'beyaz'
when 'Blue' then 'mavi'
when 'Grey' then 'gri'
else 'renk tanýmý yok'
end
) as Renkler from DimProduct

