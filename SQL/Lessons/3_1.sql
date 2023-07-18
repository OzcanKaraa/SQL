/* 07.06.2023  5.*/
--------------------------------------------------------------------------------------------------------------------------------------
QUERY SIRALAMASI : 
-------------------
SELECT
WHERE
GROUP BY
HAVING
ORDER BY

---------------------------------------------------------------------------------------------------------------------------------------
Between: Arasinda degerleri verileri gosterme
And : Karsilastirmada en az biri gerceklesmek zorunda. 1=1
Or : Karsilastirmada sadece biri gerceklesse yeterlidir.Veya ikisi de gerceklesbilir. 1=0
asc (Ascending)   : (A-Z - 1-9  siralama) Küçük->Büyük Artarak siralama
desc (Descending) : (Z-A - 9-1  siralama) Büyük->Küçük Azalarak siralama
---------------------------------------------------------------------------------------------------------------------------------------
OrderBy:Siralama islemi
Limit: Ýstenilen kayýt sayýsýna gösterir.
Top : Kayitlarin bir kismini gosterme icin.
Offset : Sorgudan satýr döndürmeye baþlamadan önce atlanacak satýr sayýsýný
Fetch  : 
---------------------------------------------------------------------------------------------------------------------------------------
select * from employees where salary between 4000 and 10000

select * from employees where  (salary between 4000 and 10000) and (job_id = 'IT_PROG')

select * from employees where  (salary between 4000 and 10000) or (job_id = 'IT_PROG')

select * from employees where  (salary between 4000 and 10000) or (job_id = 'IT_PROG') order by  first_name

select * from employees where  (salary between 4000 and 10000) or (job_id = 'IT_PROG') order by  salary

select * from employees where  (salary between 4000 and 10000) or (job_id = 'IT_PROG') order by  2    -->  2.Kolon siralama (First Name)

select * from employees where  (salary between 4000 and 10000) or (job_id = 'IT_PROG') order by  1    -->  1.Kolon siralama (employee_id)

select * from employees where  (salary between 4000 and 10000) or (job_id = 'IT_PROG') order by  1 ,8 desc =>1 ve 8.kolon  (employee_id,salary)

select * from employees where  (salary between 4000 and 10000) or (job_id = 'IT_PROG') order by  employee_id ASC     
select * from employees where  (salary between 4000 and 10000) or (job_id = 'IT_PROG') order by  employee_id DESC    

select * from employees where  (salary between 4000 and 10000) or (job_id = 'IT_PROG') order by  salary  desc limit 5   

select * from employees where  (salary between 4000 and 15000) or (job_id = 'IT_PROG') order by  salary  desc limit 5 offset 5  -->  OFFSET

--------------------------------------------------------------------------------------------------------------------------------------
Aggregate Functions :
----------------------
Sum :Toplam
Avg (Average) : Ortalama
Count : Sayma
Max : Maximum ,Min:Minimum
Group By:
Having  :

 --> Count
select count(*) from employees 
select count(1) from employees 
select count(*) from employees where job_id = 'ST_MAN'
select count(distinct job_id ) from employees     --> 19 job_id 

 --> Group by  
select job_id , count(*) from employees   group by job_id                
select job_id , count(*) from employees  where (salary between 6000 and 10000) group by job_id 


--> Having ile  1 den buyuk olanlari gosterme 
select job_id , count(*) from employees  
	where (salary between 6000 and 10000)
		group by job_id 
			having count(*) > 1 

--> Her departmanin ORTALAMA Maasi
select department_id ,avg(salary)  from employees group by department_id 

-->  Departmanin ortalama Maasi 5000 ustu
=> select department_id ,avg(salary)  from employees  group by department_id having avg(salary) > 5000
--------------------------------------------------------------------------------------------------------------------------------------





























--------------------------------------------------------------------------------------------------------------------------------------
select * from Customers order by City,Country 
select * from Customers  order by City ASC ,Country DESC
select TOP 10 * from Customers order by CompanyName
select TOP 100 PERCENT * from Customers order by CompanyName            -->  Percent ile yuzde belirtme. TOP 100 PERCENT => %100 
select TOP 50 PERCENT * from Customers order by CompanyName             -->  Percent ile yuzde belirtme. TOP 50 PERCENT => %50
--------------------------------------------------------------------------------------------------------------------------------------