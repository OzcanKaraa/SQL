/* 16.06.2023 Konu Anlatim Part-II */

Functions
--------------------------------------------------------------------------------------------------------------------------------------
-- REPLACE Year -> MONTH olarak degistirme 
CREATE OR REPLACE FUNCTION ozcan.yas_hesaplama(dogum_tarihim date)
 RETURNS integer
 LANGUAGE sql
AS $function$                                                               
	select extract(month  from age(current_date, dogum_tarihim))  as sonuc                 
	$function$;
--------------------------------------------------------------------------------------------------------------------------------------
Drop : Objeleri Silme
drop table ,function,index,trigger 

--Function Silme 
drop function yas_hesaplama  
--------------------------------------------------------------------------------------------------------------------------------------

--Her departmanda kac kisi donduren fonksiyon Departman Id 

create or replace function department_calisan_say (dept_numarasi integer)
returns integer  
language sql as
$$
	select count(*) from employees 
	where department_id = dept_numarasi
$$;

select department_calisan_say (80)


select department_id ,department_name ,department_calisan_say(department_id) from departments d 
--------------------------------------------------------------------------------------------------------------------------------------
-- Departmanda Calisan  var mi yok mu??

create or replace function department_calisan_say2 (dept_numarasi integer)
returns varchar  
language sql as
$$
	select 
		case 
			when count(*) = 0 then 'Departman Bulunamadi'
			when cast(count(*) as text)
		end as sonuc
	from employees 
	where department_id =dept_numarasi
$$

select department_calisan_say (80)
--------------------------------------------------------------------------------------------------------------------------------------


