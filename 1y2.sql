use veriler

SELECT*FROM users U

select ct.CITY,count(U.ID) AS kullanici
FROM
users U
JOIN Addres A on A.USERID=U.ID
JOIN Country c on c.ID=A.COUNTRYID
JOIN Cities ct on ct.ID=A.CITYID
JOIN Towns t on t.ID=A.TOWNID
JOIN Districts d on d.ID=A.DISTRICTID
group by ct.CITY