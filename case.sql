select OrderID,Quantity,
case 
	when Quantity > 30 then 'Q1'
	when Quantity = 30 then 'Q2'
	else 'Q3' 
end as QuantityText --3. kolon oluþtu

from [Order Details]

------------------------------------

select ContactName,City,Country from Customers
order by
(
case

when City is null then Country
else City
end
)