USE ETRADE2

/*
Select DATEPART(MONTH,'2018-01-06')*/
SELECT*FROM SaleData
UPDATE SaleData  SET OrderDate='06.OCAK'WHERE DATEPART(MONTH,date)=1



SELECT Manager,OrderDate ,sum(Sale_amt) as Sale_amt
from SaleData
GROUP BY OrderDate,Manager
order by OrderDate,Manager