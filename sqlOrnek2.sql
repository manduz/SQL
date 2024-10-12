-- FactinternetSale tablosdaki hangi ürünü hangi müþteriye ne kadar atmýþýz

select DP.EnglishProductName,
DC.FirstName,--hangi ürün
DC.LastName,
FIS.TotalProductCost
from FactInternetSales as FIS
inner join DimProduct as DP
on FIS.ProductKey = DP.ProductKey
inner join DimCustomer as DC
on FIS.CustomerKey = DC.CustomerKey




