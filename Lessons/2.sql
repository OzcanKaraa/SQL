/* 02.06.2023  */

Distinct: Tekrarli olanlardan sadece birini gosterme

Primary key olan kayitlar distinc ile yapilsa da tek kayit olarak gelecektir.Tekrar edemez.



1-
Select distinct job_id,salary from Employees
Select Count(*) from Employees
Select Count(First_Name) from Employees

Select distinct First_Name,Last_Name from Employees


7-create user test_user identified by 123456  
ile tablo sifre olusturma



10-select hire_date ,substr(hire_date ,8,2),substr(hire_date ,1,50) from Employees


Create table employees_bckp as select substr(hire_date ,8,2) as HIRE_DATE  from Employees

select * from  employees_bckp 

select to_char(hire_date)  from Employees


select to_char(hire_date,'DD/MM/YYYY')  from Employees

select hire_date to_char(hire_date,'MM')  from Employees
select hire_date to_char(hire_date,'MM')  from AS AYLAR Employees AS CALISANLAR

select substr(hire_date ,8,2) as HIRE_DATE  from Employees




15-
select 'Hello World!' ,Substr('Hello World!',1,7) AS ilkelime from DUAL 

