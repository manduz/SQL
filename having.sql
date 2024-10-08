--HAVING ifadesi, GROUP BY ifadesiyle birlikte kullanýlýr
--ve gruplandýrýlmýþ sonuçlara koþul uygulamak için kullanýlýr.
--WHERE ifadesi, satýrlarý gruplamadan önce filtrelemek için kullanýlýrken,
--HAVING gruplandýrýldýktan sonra filtreleme yapar.

/*SELECT column_name, AGGREGATE_FUNCTION(column_name)
FROM table_name
GROUP BY column_name
HAVING condition;*/ -- kullanýmý vardýr
--GRUPLAMA ÝÞLEMÝ YAPILIR

select COUNT(CustomerID), Country from Customers
group by Country


