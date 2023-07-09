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





