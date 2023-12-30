use ETRADE

SELECT *FROM Customer1
order by customerNumber asc

SELECT *FROM Customer1
order by customerNumber desc


SELECT *FROM Customer1
order by salesRepEmployeeNumber desc

SELECT *FROM Customer1
order by salesRepEmployeeNumber asc


SELECT *FROM Customer1
order by creditLimit desc





SELECT *FROM Customer1
order by creditLimit asc





SELECT *FROM Customer1
order by country,customerName desc


SELECT *FROM Customer1
where country='USA'
order by city,customerName asc

SELECT *FROM Customer1
where country='USA'
order by 2,5




select
top 15 percent
*from Customer1
order by customerName



