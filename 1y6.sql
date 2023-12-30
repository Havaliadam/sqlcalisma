use text 


select*from userss


select*from adress


select 
u.id,u.username_,a.adresstext

from userss U  left join adress a on a.userid=u.id




select 
u.id,u.username_,a.adresstext

from userss U  right join adress a on a.userid=u.id


select 
u.id,u.username_,a.adresstext

from userss U  INNER join adress a on a.userid=u.id



select 
u.id,u.username_,a.adresstext

from userss U  full join adress a on a.userid=u.id
