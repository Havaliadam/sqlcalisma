USE ETRADE2
Select*from SaleData
Select*from SaleData ORDER BY OrderDate DESC
DELETE FROM SaleData where OrderDate='2019-12-21 00:00:00.000'



SELECT Item,sum (Sale_amt) as Sale_amt,
COUNT(*) AS ROWCOUNT_,
SUM(Units) as Units,
SUM(Unit_price) as Unit_price
from SaleData
GROUP BY Item
Order by Item
