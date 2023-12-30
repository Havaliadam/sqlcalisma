use ETRADE4

--SUB
-- �R�NLER�N F�YAT ANAL�Z�Z EN �OK HANG� AY SATILDI
SET STATISTICS IO ON 
SELECT ITM.ITEMCODE AS URUNKODU,
ITM.ITEMNAME AS URUNAD�,
(sELECT MIN(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID)AS ENDUSUKF�YAT,
(sELECT MAX(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID)AS ENY�KSEKF�YAT,
(sELECT AVG(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID)AS ORTALAMAF�YAT,
(sELECT SUM(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID)AS TOPLAMADET,
(sELECT SUM(LINETOTAL) FROM ORDERDETAILS WHERE ITEMID=ITM.ID)AS TOPLAMTUTAR,

(
SELECT  TOP 1 DATEPART(MONTH,O.DATE_)AS AY
FROM ORDERDETAILS  OD 
INNER JOIN ORDERS O ON OD.ORDERID=O.ID
WHERE  OD.ITEMID=ITM.ID 
GROUP BY DATEPART(MONTH,O.DATE_)
ORDER BY SUM(AMOUNT) DESC
)AS ENCOKSAT�LANAY


FROM
ITEMS ITM 
--WHERE (SELECT MIN(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) IS NULL
WHERE ITM.ID  IN 
(SELECT ITEMID FROM ORDERDETAILS)
ORDER BY 3
--SELECT 1294+3748


--SELECT 5042*8/1024.01