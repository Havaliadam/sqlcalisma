USE ETRADE2
/*
Select
Manager,Units,Count(*)
from SaleData 
WHERE OrderDate='2018-01-06'
GROUP BY Manager
ORDER BY Manager
*/

Select Manager ,SUM(Sale_amt)
from SaleData
WHERE Sale_amt>60000
GROUP BY Manager
ORDER BY SUM(Sale_amt) DESC
