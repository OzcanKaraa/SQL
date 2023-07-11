/* 16.06.2023 Konu Anlatim Part-IV */

Window Functions : Pencere Fonskiyonlari / Analitik Fonskiyonlar


1-Row_Number : Siralama

-- Salary goreHesaplama ile siralama yapilmasi.

select employee_id,salary,
row_number () over (order by salary desc) as siralama
from employees e 


-- Manager_id goreHesaplama ile siralama yapilmasi.

select employee_id,salary,manager_id,
row_number () over (order by manager_id desc) as siralama
from employees e 


2-Rank

-- Salary gore Hesaplama ile rank siralama yapilmasi.
select employee_id,salary,Manager_id,
rank () over (order by salary desc) as maas_kademesi
from employees e 


3-Dense_Rank : Farkli degere numara verme.

--Kac farkli maas var
select employee_id,salary,Manager_id,
dense_rank () over (order by salary desc) as maas_kademesi_dense_rank
from employees e 



-- Row_Number,Rank,Dense_Rank Kullanimi
select employee_id,salary,Manager_id,
row_number () over (order by Manager_id desc) as siralama,
rank  () over (order by salary desc) as maas_kademesi,
dense_rank () over (order by salary desc) as maas_kademesi_dense_rank
from employees e 




4-LAG : Bir onceki kaydi bulma siralama ilisikilendirme icin kullanilir.

--hire_date gore oncekki kayitlari bulma
select employee_id,hire_date,
lag (hire_date) over (order by hire_date) as onceki_kayit_hire_date
from employees e 


5-LEAD : Bir sonraki kaydi bulma siralama ilisikilendirme icin kullanilir.

select employee_id,hire_date,
lead (hire_date) over (order by hire_date) as sonraki_kayit_hire_date
from employees e 


-- lAG,Lead kullanimi hire_date gore siralama
select employee_id,hire_date,
lag (hire_date) over (order by hire_date) as onceki_kayit_hire_date,
lead (hire_date) over (order by hire_date) as sonraki_kayit_hire_date
from employees e 




-- lAG,Lead kullanimi employee_id gore siralama
select employee_id,hire_date,
lag (hire_date) over (order by employee_id) as onceki_kayit_hire_date,
lead (hire_date) over (order by employee_id) as onceki_kayit_hire_date
from employees e 

 
-- hire_date gore 2 kayidi farki bulan 
select employee_id,hire_date,
lag (hire_date) over (order by hire_date) as onceki_kayit_hire_date,
lead (hire_date) over (order by hire_date) as onceki_kayit_hire_date,
(lag (hire_date) over (order by hire_date) - lead (hire_date) over (order by hire_date)) as fark
from employees e 












