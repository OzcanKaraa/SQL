/* 14.06.2023  Ders Odev cozumeleri   HomeWork -4.sql Sorular*/

--------------------------------------------------------------------------------------------------------------------------------------
3-Soyadý "S" ile baþlayan veya "son" ile biten çalýþanlarý bulun.

	select * 
	from employees e 
	where last_name  like 'S%' or last_name like '%son'


--------------------------------------------------------------------------------------------------------------------------------------
4- En yüksek maaþa sahip çalýþanlarýn adýný ve maaþýný bulun

	select first_name ,last_name ,salary  
	from employees e 
	where salary = (select max(salary) from employees e2 )



--------------------------------------------------------------------------------------------------------------------------------------
5-Calýþanlarýn sayýsýnin en fazla oldugu departmani hesaplayýn ve Departman Name ini ve Caslisan Sayisini gosterin
	(Dogru Cevap : Departman Name = Shippin / Calisan Sayisi = 45) *


1.Yol :
--------
	select e.department_id,d.department_name  ,count(*) from employees e 
	left join departments d on d.department_id = e.department_id 
	group by e.department_id,d.department_name 
	order by count(*) desc
	limit 1



2.Yol :
---------
	select max(sayi) from 
	(
	select department_id ,count(*) as sayi from employees e 
	group by department_id
	)
	A


	--------------------------------------------------------------------------------------------------------------------------------------
7-Departmaný 'HR', 'IT' veya 'Sales' olan çalýþanlarýn listesini bulun (OR Kullanmadan yazin)


	select * from employees e 
	left join departments d on d.department_id =e.department_id 
	where department_name in ('HR','IT','Sales')

--------------------------------------------------------------------------------------------------------------------------------------

8- Maaþý, kendi departmanýnýn ortalama maaþýndan yüksek olan ve yöneticisi IT departmanýnda olmayan çalýþanlarý bulun. *


	select distinct a.employee_id , department_name   from
	(
	select e.employee_id from employees e 
	left join employees e2 on e.manager_id = e2.employee_id  
	left join departments ed on ed.department_id = e.department_id 
	left join departments md on e2.department_id  = md.department_id 
	where e.salary > (select avg(salary) from employees where department_id = e.department_id) 
	and md.department_name != 'IT'
	)
	a
	left join employees e3 on e3.employee_id  = a.employee_id
	left join departments d2 on d2.department_id = e3.department_id



--departmanlarin ortalamasi 
	select A.*,B.ortalama ,mgr.department_id as manager_dept from 
	(
	select e.* from employees e 
	left join employees e2 on e.manager_id = e2.employee_id  
	left join departments ed on ed.department_id = e.department_id 
	left join departments md on e2.department_id  = md.department_id 
	where e.salary > (select avg(salary) from employees where department_id = e.department_id) 
	and md.department_name != 'IT'
	)
	A
	left join (select department_id ,avg(salary) as ortalama from employees e group by department_id) B on B.department_id = A.department_id
	left join employees as mgr on mgr.employee_id = A.manager_id



--Departman name IT olmayan ve manager dept= 60 olan veya maasi ortalamdan buyuk olan sorgu
	select * from 
	(select A.*,B.ortalama ,mgr.department_id as manager_dept from 
	(
	select e.* from employees e 
	left join employees e2 on e.manager_id = e2.employee_id  
	left join departments ed on ed.department_id = e.department_id 
	left join departments md on e2.department_id  = md.department_id 
	where e.salary > (select avg(salary) from employees where department_id = e.department_id) 
	and md.department_name != 'IT'
	)
	A
	left join (select department_id ,avg(salary) as ortalama from employees e group by department_id) B on B.department_id = A.department_id
	left join employees as mgr on mgr.employee_id = A.manager_id
	)SON 
	where manager_dept = 60 or salary > ortalama


	--------------------------------------------------------------------------------------------------------------------------------------
	10- Satýþ departmanýnýn ortalama maaþýndan daha yüksek maaþa  sahip olanlar ile Finans departmanýnda herhangi bir manager
	pozisyonuna sahip olan çalýþanlarý birlestirin. Eger iki  kosula da uyan bir kayit varsa o kaydi sonuc listesinde birden
	fazla gosterin. *

	select e.* from employees e 
	where 
	salary >  (select avg(salary) as departman_ortalama from employees e2
	left join departments d ON d.department_id = e2.department_id 
	where department_name = 'Sales')
	union all
	select e.* from employees e
	left join departments d on d.department_id = e.department_id 
	left join jobs j  on j.job_id = e.job_id 
	where department_name = 'Finance'  and job_title like '%Manager%'

	--------------------------------------------------------------------------------------------------------------------------------------

