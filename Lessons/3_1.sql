/* 07.06.2023  5.*/
--------------------------------------------------------------------------------------------------------------------------------------
Between: Arasinda degerleri verileri gosterme
And : Karsilastirmada en az biri gerceklesmek zorunda. 1=1
Or : Karsilastirmada sadece biri gerceklesse yeterlidir.Veya ikisi de gerceklesbilir. 1=0


Select * from employees where salary between 4000 and 10000

select * from employees where  (salary between 4000 and 10000) and (job_id = 'IT_PROG')

select * from employees where  (salary between 4000 and 10000) or (job_id = 'IT_PROG')
