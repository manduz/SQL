-- FactinternetSale tablosdaki hangi �r�n� hangi m��teriye ne kadar atm���z

select DP.EnglishProductName,
DC.FirstName,--hangi �r�n
DC.LastName,
FIS.TotalProductCost
from FactInternetSales as FIS
inner join DimProduct as DP
on FIS.ProductKey = DP.ProductKey
inner join DimCustomer as DC
on FIS.CustomerKey = DC.CustomerKey




