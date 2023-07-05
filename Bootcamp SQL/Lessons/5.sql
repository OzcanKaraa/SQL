/* 14.06.2023  */


3-Soyadý "S" ile baþlayan veya "son" ile biten çalýþanlarý
bulun

=>select * from employees e 
where last_name  like 'S%' or last_name like '%son'



4- En yüksek maaþa sahip çalýþanlarýn adýný ve maaþýný bulun

select first_name ,last_name ,salary  from employees e 
where salary = (select max(salary) from employees e2 )
