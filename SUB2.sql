use ETRADE4

--SUB
-- KULLANICININ SON ADRES�N� BULMA

SELECT U.*,

(SELECT TOP 1 ADDRESSTEXT FROM ADDRESS WHERE USERID =U.ID ORDER BY ID DESC)SONADRES,
(SELECT TOP 1 ADDRESSTEXT FROM ADDRESS WHERE USERID =U.ID ORDER BY ID )ILKADRES ,
(SELECT COUNT( ADDRESSTEXT) FROM ADDRESS WHERE USERID =U.ID )ADRESSAYISI  

FROM USERS U 
/*
ORDER BY A.ID DESC



SELECT U.*,A.ADDRESSTEXT,A.ID

FROM USERS U 
INNER JOIN ADDRESS A ON U.ID=A.USERID


ORDER BY A.ID DESC 
*/