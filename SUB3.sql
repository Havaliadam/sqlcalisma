
SELECT U.*,

(SELECT TOP 1 ADDRESSTEXT FROM ADDRESS WHERE USERID =U.ID ORDER BY ID DESC)SONADRES  

FROM USERS U 

ORDER BY A.ID DESC
/*
WHERE U.ID=1
SELECT*FROM USERS*/