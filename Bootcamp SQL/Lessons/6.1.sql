/* 16.06.2023 Konu Anlatim Part-II */

--Functions

--Her departmanda kac kisi donduren fonksiyon Departman Id 








Drop : Objeleri Silme

drop table , function , index , trigger 

drop function yas_hesaplama




-- REPLACE Year -> MONTH olarak degistirme 
CREATE OR REPLACE FUNCTION ozcan.yas_hesaplama(dogum_tarihim date)
 RETURNS integer
 LANGUAGE sql
AS $function$                                                               
	select extract(month  from age(current_date, dogum_tarihim))  as sonuc                 
	$function$;