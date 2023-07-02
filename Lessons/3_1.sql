/* 07.06.2023  5.*/
--------------------------------------------------------------------------------------------------------------------------------------
Between: Arasinda degerleri verileri gosterme
OrderBy:Siralama islemi
Limit: Ýstenilen kayýt sayýsýna gösterir.
Top : Kayitlarin bir kismini gosterme icin.

And : Karsilastirmada en az biri gerceklesmek zorunda. 1=1
Or : Karsilastirmada sadece biri gerceklesse yeterlidir.Veya ikisi de gerceklesbilir. 1=0
asc (Ascending)   : (A-Z - 1-9  siralama) Küçük->Büyük Artarak siralama
desc (Descending) : (Z-A - 9-1  siralama) Büyük->Küçük Azalarak siralama

Offset : Sorgudan satýr döndürmeye baþlamadan önce atlanacak satýr sayýsýný
Fetch  : 



select * from employees where salary between 4000 and 10000

select * from employees where  (salary between 4000 and 10000) and (job_id = 'IT_PROG')

select * from employees where  (salary between 4000 and 10000) or (job_id = 'IT_PROG')

select * from employees where  (salary between 4000 and 10000) or (job_id = 'IT_PROG') order by  first_name

select * from employees where  (salary between 4000 and 10000) or (job_id = 'IT_PROG') order by  salary

select * from employees where  (salary between 4000 and 10000) or (job_id = 'IT_PROG') order by  2    => 2.Kolon siralama (First Name)

select * from employees where  (salary between 4000 and 10000) or (job_id = 'IT_PROG') order by  1    => 1.Kolon siralama (employee_id)

select * from employees where  (salary between 4000 and 10000) or (job_id = 'IT_PROG') order by  1 ,8 desc =>1 ve 8.kolon  (employee_id,salary)

select * from employees where  (salary between 4000 and 10000) or (job_id = 'IT_PROG') order by  employee_id ASC     
select * from employees where  (salary between 4000 and 10000) or (job_id = 'IT_PROG') order by  employee_id DESC    

select * from employees where  (salary between 4000 and 10000) or (job_id = 'IT_PROG') order by  salary  desc limit 5   


-- OFFSET --
select * from employees where  (salary between 4000 and 15000) or (job_id = 'IT_PROG') order by  salary  desc limit 5 offset 5



--------------------------------------------------------------------------------------------------------------------------------------
select * from Customers order by City,Country 

select * from Customers  order by City ASC ,Country DESC

select TOP 10 * from Customers order by CompanyName

select TOP 100 PERCENT * from Customers order by CompanyName            => Percent ile yuzde belirtme. TOP 100 PERCENT => %100 
select TOP 50 PERCENT * from Customers order by CompanyName             => Percent ile yuzde belirtme. TOP 50 PERCENT => %50
--------------------------------------------------------------------------------------------------------------------------------------
Sum :Toplam
Avg (Average) : Ortalama
Count : Sayma
Max : Maximum ,Min:Minimum
Group By:


select count(*) from employees 
select count(1) from employees 
select count(*) from employees where job_id = 'ST_MAN'

select count(distinct job_id ) from employees        => 19 job_id   