/*07/6/2023   Odev Soruları: Veritabanlarına ve SQL'e Giriş   */
--------------------------------------------------------------------------------------------------------------------------------------
1-HR şemasındaki çalışanların hangi yıllarda işe alındığını ve her yıldaki çalışan sayısını bulun.

=> *** Select  start_date, TO_CHAR( start_date,'YYYY') as "YIL" from job_history

--------------------------------------------------------------------------------------------------------------------------------------
2- HR şemasındaki her JOB ID icin toplam Salary tutarını bulun

=> ***select sum(min_salary) ,sum(max_salary) from jobs 
--------------------------------------------------------------------------------------------------------------------------------------
3-Buldugunuz sonucta JOB ID nin yaninda JOB Title kolonunu da gosterin

=> *** select job_id ,job_title  from jobs j 
--------------------------------------------------------------------------------------------------------------------------------------
4-Employees ve Departments tablolarından çalışan ID'sini, adını, soyadını ve çalışanların ilgili departman adlarıyla birlikte gosteren bir query yazin.
  Cikan Sonuclari Departman Adina gore A dan Z ye listeleyiniz

=> select e.employee_id ,e.first_name ,e.last_name ,d.department_name 
from employees e ,departments d 
order by 4

--------------------------------------------------------------------------------------------------------------------------------------
5- Employees tablosundan çalışan ID'sini, adını, soyadını ve calsanin ilgili yöneticisinin (Manager) adlarıyla birlikte alın gosteren bir query yazin.

=> *** select e.employee_id ,e.first_name ,e.last_name ,e.manager_id 
from employees e 


--------------------------------------------------------------------------------------------------------------------------------------
6- 5 kisiden fazla calisani olan managerlerin ismini ve kac kisinin manager i oldugunu gosteren
   ve sonucu yonetilen calisan sayisina gore buyukten kucuge siralayip gosteren bir query yazin. 

    Query sonucunu iki kolon halinde gosterin  "Manager Name" ve "Number Of Employees Managed"
  - Yukaridaki sorguyu su sekilde modifiye edin :"5 Kisiden Fazla Calisani Olan veya Yoneticisi oldugu calisanlarin 1997 Eylul ayindan sonra ise basladi ise"

=>  ??


--------------------------------------------------------------------------------------------------------------------------------------
7-"Employees" tablosundan maaşı ortalama maaşın üzerinde olan ve "IT_PROG" iş unvanına sahip çalışanların "Employee_ID", "First_Name", "Last_Name" ve "Salary" bilgilerini alın.


=>  select employee_id ,e.salary ,job_id,salary ,first_name  from employees e 
    where salary >6462 and job_id = 'IT_PROG'
--------------------------------------------------------------------------------------------------------------------------------------
8-"Employees", "Departments" ve "Locations" tablolarından çalışanların 
   "Employee_ID", "First_Name", "Last_Name", "Department_Name" ve "City" bilgilerini çalışanların ilgili departman ve lokasyon adlarıyla birlikte alın.
  - Sonucun butun employeeleri gosterdiginden emin olun ***
 - Eger Sehir ismi bos olan kayit varsa onlari 'Sehir Bilinmiyor' diye gosterin

=> select 
e.employee_id ,e.first_name ,e.last_name ,
d.department_name ,d.department_id ,
l.city
from employees e 
join departments d  on e.department_id = d.department_id 
join locations l on  d.location_id =l.location_id   
order by 6

--------------------------------------------------------------------------------------------------------------------------------------
9-Calisan İsimleri, iş tanımlarını ve maaşlarını içeren bir sonuç kümesi döndürün. Sonuçları maaş sırasına göre azalan şekilde sıralayın.


=> select 
e.employee_id ,e.first_name ,e.last_name ,
e.job_id ,
e.salary 
from employees e 
order by 5 desc


--------------------------------------------------------------------------------------------------------------------------------------
10- Departman adı, ortalama maaş ve çalışan sayısı içeren bir sonuç kümesi döndürün. 
  Sadece ortalama maaşı 5000'den büyük olan departmanları gösterin.

 **** 
 => select 
    e.employee_id ,e.first_name ,e.last_name ,
    e.job_id ,e.salary ,
    d.department_name ,d.department_id 
    from employees e 
    join departments d  on e.department_id = d.department_id 
    where salary > 5000

--------------------------------------------------------------------------------------------------------------------------------------
11-- Calisanlar icinde sadece yonetici pozisyonunda olanlarin isimlerini, soyisimlerini ve JOB Title larini gosteren bi query yazin. Sonuclari her kayittan sadece 1 tane olacak
     sekilde ve isim e gore A dan Z ye siralanmis haliyle gosterin.
    ***

    => select 
     e.employee_id ,e.first_name ,e.last_name ,e.job_id ,e.salary ,
      d.department_id ,
    j.job_title 
    from employees e 
    join departments d  on e.department_id = d.department_id 
    join jobs j on e.job_id = j.job_id 
    where d.department_name ='Executive'
    order by 2


    select 
    distinct e2.first_name ,e2.last_name ,job_title
    from employees e 
    left join employees e2 on e.manager_id = e2.employee_id
    left join jobs j on e2.job_id= j.job_id	
    where e2.first_name is not null
--------------------------------------------------------------------------------------------------------------------------------------
12-Tum calisanlari kullanarak her yil ise alinan çalışanların sayısını ve o yil ise alinan kisi sayisinin toplam calisan sayisina karsin yüzdesini hesaplayın

=> ***select start_date ,end_date  from job_history jh 

--------------------------------------------------------------------------------------------------------------------------------------
13- Tum calisanlarin isim , soy isim, departman isimleri ve ise baslayip isi biraktiklari tarihleri gosterin. Eger baslama ve bitis tarihi yoksa bu kayitlari sonuc listesinden cikarin.

    => select 
    e.first_name,e.last_name,
    j.start_date ,j.end_date 
    from job_history j
    join employees e on j.employee_id = e.employee_id 

--------------------------------------------------------------------------------------------------------------------------------------
14- Employees tablosunda birden fazla bulunan isimleri (First Name) ve kac defa tekrar ettigini bulan bir query yaziniz.

  =>
--------------------------------------------------------------------------------------------------------------------------------------
