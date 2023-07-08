/* 16.06.2023 Konu Anlatim */

Recursive : Ic ice Query tekrar etme.For Dongusu
			Hiyerarsi Ilk selecte tanimlama diger select join ile diger hiyerasiler sonuclari dondurur.
			Bulana kadar doner.

Syntax :  with recursive 
		{
		select 
		union all
		select 
		}


--------------------------------------------------------------------------------------------------------------------------------------
with recursive calisan_hiyerarsisi as 
(

select employee_id,first_name,last_name,manager_id , 1 as kidem  --Usteki Query de Baslangic noktasi verilmesi.
from employees 
union all
select e.employee_id,e.first_name,e.last_name,e.manager_id , ch.kidem + 1 
from employees e 
join calisan_hiyerarsisi ch on ch.employee_id = e.manager_id 
)
select employee_id,first_name,last_name,manager_id , 1 as kidem    --sonuc dondurme
from calisan_hiyerarsisi


--------------------------------------------------------------------------------------------------------------------------------------
with recursive calisan_hiyerarsisi as 
(
select employee_id,first_name,last_name,manager_id , 1 as level
from employees 
where employee_id = 102 --Anchor Member
union all
select e.employee_id,e.first_name,e.last_name,e.manager_id , ch.level + 1 
from employees e 
join calisan_hiyerarsisi ch on ch.employee_id = e.manager_id 
)
select employee_id,first_name,last_name,manager_id , 1 as kidem
from calisan_hiyerarsisi


--------------------------------------------------------------------------------------------------------------------------------------
with recursive calisan_hiyerarsisi as 
(
select employee_id,first_name,last_name,manager_id , 1 as level
from employees 
where employee_id = 102 --Anchor Member
union all
select e.employee_id,e.first_name,e.last_name,e.manager_id , ch.level + 1 
from employees e 
join calisan_hiyerarsisi ch on ch.employee_id = e.manager_id 
)
select employee_id,first_name,last_name,manager_id , level
from calisan_hiyerarsisi



--------------------------------------------------------------------------------------------------------------------------------------
with recursive calisan_hiyerarsisi as 
(
select employee_id,first_name,last_name,manager_id , 1 as kidem
from employees 
 where employee_id = 102   --Anchor Member
union all
select e.employee_id,e.first_name,e.last_name,e.manager_id , ch.kidem + 1 
from employees e 
join calisan_hiyerarsisi ch on ch.employee_id = e.manager_id 
)
select employee_id,first_name,last_name,manager_id , kidem
from calisan_hiyerarsisi


--------------------------------------------------------------------------------------------------------------------------------------
--Steven King'ten baslasin 1.Kidemse digerlerine devam et --Anchor Member ile baslayarak 1'er artirma
with recursive calisan_hiyerarsisi as 
(
select employee_id,first_name,last_name,manager_id , 1 as kidem
from employees 
 where employee_id = 100 --Anchor Member
union all
select e.employee_id,e.first_name,e.last_name,e.manager_id , ch.kidem + 1 
from employees e 
join calisan_hiyerarsisi ch on ch.employee_id = e.manager_id 
)
select employee_id,first_name,last_name,manager_id , kidem
from calisan_hiyerarsisi



--------------------------------------------------------------------------------------------------------------------------------------
--10 dan baslatip 5er 5er artirma
with recursive calisan_hiyerarsisi as 
(
select employee_id,first_name,last_name,manager_id , 10 as kidem --Baslangic moktasi
from employees 
 where employee_id = 100
union all
select e.employee_id,e.first_name,e.last_name,e.manager_id , ch.kidem + 5  --Artis miktari
from employees e 
join calisan_hiyerarsisi ch on ch.employee_id = e.manager_id 
)
select employee_id,first_name,last_name,manager_id , kidem
from calisan_hiyerarsisi






--------------------------------------------------------------------------------------------------------------------------------------
with recursive calisan_hiyerarsisi as 
(
select employee_id,first_name,last_name,manager_id , 10 as kidem
from employees 
 where employee_id = 100
union all
select e.employee_id,e.first_name,e.last_name,e.manager_id , ch.kidem + 5
from employees e 
join calisan_hiyerarsisi ch on ch.employee_id = e.manager_id 
)
select employee_id,first_name,last_name,manager_id , kidem
from calisan_hiyerarsisi
order by kidem,employee_id


--------------------------------------------------------------------------------------------------------------------------------------
with recursive calisan_hiyerarsisi as 
(
select employee_id,first_name,last_name,manager_id , 1 as kidem
from employees 
 where employee_id = 197
union all
select e.employee_id,e.first_name,e.last_name,e.manager_id , ch.kidem + 1
from employees e 
join calisan_hiyerarsisi ch on ch.employee_id = e.manager_id 
)
select employee_id,first_name,last_name,manager_id , kidem
from calisan_hiyerarsisi
order by kidem,employee_id


--------------------------------------------------------------------------------------------------------------------------------------
--Recursive Manuel Mantigi :




 --------------------------------------------------------------------------------------------------------------------------------------












