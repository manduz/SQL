--select case kolonAdi
--when 'RED' then 'k�rm�z�'  --red ise k�rm�z� yap demektir
--else
--end


select distinct(color) from DimProduct

select EnglishProductName, (case color
when 'Black' then 'Siyah'
when 'White' then 'beyaz'
when 'Blue' then 'mavi'
when 'Grey' then 'gri'
else 'renk tan�m� yok'
end
) as Renkler from DimProduct

