/* 09.06.2023  */


--------------------------------------------------------------------------------------------------------------------------------------
11- Calisanlar icinde sadece yonetici pozisyonunda olanlarin
isimlerini, soyisimlerini ve JOB Title larini gosteren bi
query yazin. Sonuclari her kayittan sadece 1 tane olacak
sekilde ve isim e gore A dan Z ye siralanmis haliyle gosterin.

select 
distinct e2.first_name ,e2.last_name ,job_title
from employees e 
left join employees e2 on e.manager_id = e2.employee_id
left join jobs j on e2.job_id= j.job_id	
where e2.first_name is not null
--------------------------------------------------------------------------------------------------------------------------------------
8-"Employees", "Departments" ve "Locations" tablolar�ndan
�al��anlar�n "Employee_ID", "First_Name", "Last_Name",
"Department_Name" ve "City" bilgilerini �al��anlar�n ilgili
departman ve lokasyon adlar�yla birlikte al�n.
- Sonucun butun employeeleri gosterdiginden emin
olun ***
- Eger Sehir ismi bos olan kayit varsa onlari 'Sehir
Bilinmiyor' diye gosterin


select 
e.employee_id ,e.first_name ,e.last_name ,
coalesce(d.department_name  ,'Departman Bilinmiyor'),
coalesce(l.city,'Bilinmiyor') as "Sehir", 'Extra Bilgi Kolonu' as ABC
from employees e 
left join departments d  on e.department_id = d.department_id 
left join locations l on  d.location_id =l.location_id   
--------------------------------------------------------------------------------------------------------------------------------------

12- Tum calisanlari kullanarak her yil ise alinan
�al��anlar�n say�s�n� ve o yil ise alinan kisi sayisinin
toplam calisan sayisina karsin y�zdesini hesaplay�n

select date_part('year',hire_date) as "��e Al�m Y�l�" ,
count(*) as "�al��an Say�s�",
(COUNT (*)*100.0/ (select COUNT(*) from employees )) as "Y�zde"
from employees
group by  date_part('year',hire_date)
order by date_part('year',hire_date)

--------------------------------------------------------------------------------------------------------------------------------------
1-HR �emas�ndaki �al��anlar�n hangi y�llarda i�e al�nd���n�
ve her y�ldaki �al��an say�s�n� bulun.

select first_name ,last_name , extract(year from hire_date) as hire_year ,sayi
from employees e 
left join (
	select  extract(year from hire_date) as hire_year,count(*) as sayi
	from employees e
	group by (hire_date)
)toplam_sayi  on date_part('year',e.hire_date) =  hire_year
order by hire_year
--------------------------------------------------------------------------------------------------------------------------------------
