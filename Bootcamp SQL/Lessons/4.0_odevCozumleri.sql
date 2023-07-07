/* 09.06.2023   Derste cozdugumuz odevler  HomeWork -3.sql Sorular */ 
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
8-"Employees", "Departments" ve "Locations" tablolarýndan
çalýþanlarýn "Employee_ID", "First_Name", "Last_Name",
"Department_Name" ve "City" bilgilerini çalýþanlarýn ilgili
departman ve lokasyon adlarýyla birlikte alýn.
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
çalýþanlarýn sayýsýný ve o yil ise alinan kisi sayisinin
toplam calisan sayisina karsin yüzdesini hesaplayýn

select date_part('year',hire_date) as "Ýþe Alým Yýlý" ,
count(*) as "Çalýþan Sayýsý",
(COUNT (*)*100.0/ (select COUNT(*) from employees )) as "Yüzde"
from employees
group by  date_part('year',hire_date)
order by date_part('year',hire_date)

--------------------------------------------------------------------------------------------------------------------------------------
1-HR þemasýndaki çalýþanlarýn hangi yýllarda iþe alýndýðýný
ve her yýldaki çalýþan sayýsýný bulun.

select first_name ,last_name , extract(year from hire_date) as hire_year ,sayi
from employees e 
left join (
	select  extract(year from hire_date) as hire_year,count(*) as sayi
	from employees e
	group by (hire_date)
)toplam_sayi  on date_part('year',e.hire_date) =  hire_year
order by hire_year
--------------------------------------------------------------------------------------------------------------------------------------
14- **** Employees tablosunda birden fazla bulunan isimleri
(First Name) ve kac defa tekrar ettigini bulan bir query
yaziniz.

select first_name , count(*) as tekrar_eden from employees e 
group by first_name 
having count(*)>1

--------------------------------------------------------------------------------------------------------------------------------------

13-Tum calisanlarin isim , soy isim, departman isimleri ve
ise baslayip isi biraktiklari tarihleri gosterin. Eger 
baslama ve bitis tarihi yoksa bu kayitlari sonuc listesinden
cikarin.


1.Yol
    select first_name ,last_name ,department_name,start_date ,end_date   from employees e 
    left join departments d on d.department_id =e.department_id 
    left join job_history jh on e.employee_id = jh.employee_id 
    where start_date is not null                                     --Bos olanlari goruntulemez.


2.Yol 
    select first_name ,last_name ,department_name,start_date ,end_date   from employees e 
    left join departments d on d.department_id =e.department_id 
    inner join job_history jh on e.employee_id = jh.employee_id 


3.Yol

     select first_name ,last_name ,department_name,start_date ,end_date ,jh.job_id  from job_history jh
    left join employees e  on e.employee_id = jh.employee_id 
     left join departments d on d.department_id =e.department_id   

--------------------------------------------------------------------------------------------------------------------------------------
