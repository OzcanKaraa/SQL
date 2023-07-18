/* 05.07.2023 Odev Cozumleri*/

1-Belirli bir yöneticinin altýnda çalýþan çalýþanlarýn sayýsýný döndüren bir SQL fonksiyonu oluþturun. 
  Fonksiyonun girdisi yönetici id'si,ciktisi ise integer bir deger olmalýdýr.

  I.YOL:
  --SQL
  create or replace function calisan_sayisi (yonetici_id integer)
	returns integer as 
	$$
	select count(*) from employees e
	where e.manager_id = yonetici_id
	$$
	language sql ;

	select calisan_sayisi(100) as sayi


	II.Yol:
	--PlSql
	create function getEmployeeCountByManagerID(managerId Integer) 
	returns Integer as
	$$
	declare
	employeeCount Integer
	begin
		select count(*) into employeeCount
		from employees e
		where manager_id = managerId
		returns employeeCount
	end

	select getEmployeeCountByManagerID(123) as employee_count



	III.YOL:
	--SQL

	 create or replace function calisan_bilgi (id_manager int)
	returns int 
	language sql
	as 
	$$
	select count(e2.manager_id) from employees e
	join employees e2 on e2.manager_id = e.employee_id
	where e2.manager_id = id_manager
	$$
	select calisan_bilgi(100)

--------------------------------------------------------------------------------------------------------------------------------------
2- Bir çalýþanýn iþ unvanýný ve departman adýný döndüren bir SQL fonksiyonu oluþturun. 
	Fonksiyonun input'u çalýþan id'si (employee_id) olmalýdýr.

	create or replace function calisan_dept_unvan(dept_unvan int)
returns table (job_title varchar , department_name varchar)                --sutun tanimlama 
language sql 
as 
$$
select d.department_name as departman ,
j.job_title as is_unvani f
from employees e
left join departments d on d.department_id = e.department_id
left join jobs j on j.job_id = e.job_id
where e.employee_id = dept_unvan  --100
$$

select from calisan_dept_unvan(100)

--------------------------------------------------------------------------------------------------------------------------------------
3-) Bir Common Table Expression ile (CTE) her departmanýn ortalama maaþýný hesaplayin. 
 Hesapladiginiz bu ortalama maasi CTE yi kullanarak departman ismi ve o departmanin managerinin ismi ile birlestirecek bir select uzerinden gosteriniz.


		with department_avg as
	(
	select department_id,
	avg(salary) as ort_maas
	from employees e 
	group by department_id
	)
	select departments.department_name ,
	concat(employees.first_name ,' ',employees.last_name) as manager_name,
	department_avg.ort_maas
	from departments
	join employees on departments.manager_id  = employees.employee_id 
	join department_avg on departments.department_id  = department_avg.department_id 



 --inner join

	 with cte as 
	(
		select d.department_id as dept_id ,
		d.department_name as dept_isim,
		count(*) as dept_sayi,
		avg(e.salary) as ort_maas
		from employees e 
		left join departments d on d.department_id = e.department_id
		group by d.department_id
	)

	select a.dept_id as dept_id , 
	e.employee_id as empt_id,
	d.department_name as dept_isim,
	a.ort_maas,
	e.first_name || ' '|| e.last_name as  yonetici 
	from cte a 
	inner join employees e on e.department_id = a.dept_id
	inner join departments d on d.department_id = e.department_id 




--inner join
		with cte as 
	(
		select department_id as dept_id,
		avg(e.salary) as ort_maas
		from employees e 
		group by department_id
	)

	select a.dept_id as dept_id , 
	e.employee_id as empt_id,
	d.department_name as dept_isim,
	a.ort_maas,
	e.first_name || ' '|| e.last_name as  yonetici 
	from cte a 
	inner join employees e on e.department_id = a.dept_id
	inner join departments d on d.department_id = e.department_id 



--left join ile 

	with cte as 
	(
		select department_id as dept_id,
		avg(e.salary) as ort_maas
		from employees e 
		group by department_id
	)

	select a.dept_id as dept_id , 
	e.employee_id as empt_id,
	d.department_name as dept_isim,
	a.ort_maas,
	e.first_name || ' '|| e.last_name as  yonetici 
	from cte a 
	left join employees e on e.department_id = a.dept_id
	left join departments d on d.department_id = e.department_id 

--------------------------------------------------------------------------------------------------------------------------------------
4- Employees tablosunda department_id sütunu için ismini kendinizin verdigi bir indeks oluþturun.

create index idx_department_id on employees(department_id

create table employee_yedek as select * from employees 
create index idx_department_id on employees_yedek (department_id)













