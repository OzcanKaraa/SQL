/* 14.06.2023  */


3-Soyad� "S" ile ba�layan veya "son" ile biten �al��anlar�
bulun

=>select * from employees e 
where last_name  like 'S%' or last_name like '%son'



4- En y�ksek maa�a sahip �al��anlar�n ad�n� ve maa��n� bulun

select first_name ,last_name ,salary  from employees e 
where salary = (select max(salary) from employees e2 )
