use veriler
/*
select*from users where ID=1

select*from Addres where USERID=1
*/
/*
select users.*,Addres.ADDRESSTEXT from 
users,Addres
where users.ID=Addres.USERID
AND users.ID=4
*/
select U.NAMESURNAME AS adsoyad,U.EMAIL mail,U.GENDER cinsiyet,U.BIRTHDATE dogum,
C.COUNTRY AS Ulke,
ce.CITY as sehir,
tw.TOWN AS ilce,
D.DISTRICT AS  ilce,
A.POSTALCODE as postakodu,
A.ADDRESSTEXT as adres
from
users U,Addres A,Country C,Cities ce,Towns tw,
Districts D
where U.ID=A.USERID



and C.ID=A.COUNTRYID
and ce.ID=A.CITYID
and tw.ID=A.TOWNID
and D.ID=A.DISTRICTID
--AND U.ID=4
and ce.CITY like'ÝZMÝR'


order by U.NAMESURNAME

