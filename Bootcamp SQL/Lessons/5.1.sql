/* 14.06.2023  Konu Anlatim */

--CASE WHEN : IF/ELSE


--  Maas araliklarina gore sonuclari goruntuleme:
---------------------------------------------------

select employee_id ,first_name ,last_name,salary ,

case        -->  Case : Sartlari Olusturma 

	when salary > 5000 and salary < 7000  then 'Dusuk Gelir'
	when salary > 7001 and salary <= 9000 then 'Ortalama Gelir'
	when salary > 9000 then 'Yuksek Gelir'
	else 'Gelir Araligi Bilinmiyor'

end as gelir_araligi                                                    

from employees e 

------------------------------------------------------------------------------------------------------



