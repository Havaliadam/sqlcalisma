USE ETRADE4

SELECT

--U.ID,U.NAMESURNAME,
/*
DATEPART(YEAR,O.DATE_) AS YIL,
DATEPART(MONTH,O.DATE_) AS AY,
*/
CT.CITY,
MAX (DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ENUZUN_S�RE,
MIN (DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ENKISA_S�RE,
AVG (DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ORTALAMA_S�RE,
SUM(O.TOTALPRICE) AS TOPLAM_S�PAR�S_TUTAR,
COUNT(O.ID) AS S�PAR�SSAY�S�
from ORDERS as O
	inner join USERS U on O.USERID= U.ID
	inner join ADDRESS A ON A.ID= O.ADDRESSID
	inner join CITIES CT ON CT.ID = A.CITYID
	inner join TOWNS T ON T.ID = A.TOWNID
	inner join DISTRICTS D on D.ID = A.DISTRICTID
	inner join PAYMENTS P ON P.ORDERID = O.ID 
	inner join INVOICES I ON I.ORDERID = O.ID

	GROUP BY
	CT.CITY
	--DATEPART(MONTH,O.DATE_),DATEPART(YEAR,O.DATE_)

	ORDER BY 1,2 DESC
/*	GROUP BY U.ID,U.NAMESURNAME
	HAVING AVG (DATEDIFF(HOUR,O.DATE_,I.DATE_))>30
	ORDER BY 6 DESC
	*/