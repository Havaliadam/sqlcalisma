use veriler



select*from users
select
ce.CITY,count(U.ID) as kullanicisayisi
from
users U,Addres A,Country C,Cities ce,Towns tw,
Districts D
where U.ID=A.USERID and C.ID=A.COUNTRYID
and ce.ID=A.CITYID
and tw.ID=A.TOWNID
and D.ID=A.DISTRICTID
GROUP BY ce.CITY



/*
and C.ID=A.COUNTRYID
and ce.ID=A.CITYID
and tw.ID=A.TOWNID
and D.ID=A.DISTRICTID
*/

