--HAVING ifadesi, GROUP BY ifadesiyle birlikte kullan�l�r
--ve grupland�r�lm�� sonu�lara ko�ul uygulamak i�in kullan�l�r.
--WHERE ifadesi, sat�rlar� gruplamadan �nce filtrelemek i�in kullan�l�rken,
--HAVING grupland�r�ld�ktan sonra filtreleme yapar.

/*SELECT column_name, AGGREGATE_FUNCTION(column_name)
FROM table_name
GROUP BY column_name
HAVING condition;*/ -- kullan�m� vard�r
--GRUPLAMA ��LEM� YAPILIR

select COUNT(CustomerID), Country from Customers
group by Country


