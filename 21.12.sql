USE ETRADE2
select*from SaleData
/*SELECT MIN(Unit_price) ,MAX(Unit_price),COUNT(Units),SUM(Units),AVG(Units) FROM SaleData  


select*from SaleData ORDER BY Sale_amt
SELECT MIN(Sale_amt) ,MAX(Sale_amt),COUNT(Sale_amt),SUM(Sale_amt),AVG(Sale_amt) FROM SaleData  */
SELECT MIN(Sale_amt) ,MAX(Sale_amt),COUNT(Sale_amt),SUM(Sale_amt),AVG(Sale_amt)from SaleData WHERE Region='East'

SELECT MIN(Sale_amt) ,MAX(Sale_amt),COUNT(Sale_amt),SUM(Sale_amt),AVG(Sale_amt)from SaleData WHERE Region='West'

SELECT MIN(Sale_amt) ,MAX(Sale_amt),COUNT(Sale_amt),SUM(Sale_amt),AVG(Sale_amt)from SaleData WHERE Region='Central'


select    Region, MIN(Sale_amt) AS Unit_price ,MAX(Sale_amt) as Units,COUNT(Sale_amt),SUM(Sale_amt),AVG(Sale_amt)from SaleData GROUP BY Region order by SUM(Unit_price)


select    Region, Manager, MIN(Sale_amt) AS Unit_price ,MAX(Sale_amt) as Units,COUNT(Sale_amt),SUM(Sale_amt),AVG(Sale_amt)from SaleData GROUP BY Region order by SUM(Unit_price) DESC





SELECT TOP 10
Manager,SUM

(Unit_price) as Unit_price
from SaleData
Group by Manager
order by sum(Unit_price) Desc

select*,
CONVERT

(DATE,OrderDate)as Date2


from SaleData where Manager='Martha'
order by OrderDate

SELECT CONVERT(datetime
,'2018-04-01 00:00:00.000')

select
*


from SaleData where Manager='Martha'
order by OrderDate

UPDATE SaleData SET 
  date
=Convert(Date,OrderDate)

select
*


from SaleData where Manager='Martha'
and  date='2018-04-01'
order by OrderDate




select 
Manager,date,sum(Sale_amt) as Sale_amt

from SaleData where Region='East'
group by Manager,date
order by  Manager,date

select
date,Region,Sum(Sale_amt)
as Sale_amt from SaleData

where date='2018-01-00'
group by Manager,date
order by  Manager,date


select
date,Region,Sum(Sale_amt)
as Sale_amt from SaleData

where date='2018-01-00'
group by Manager,date
order by  Manager,date
sum (Sale_amt) desc
