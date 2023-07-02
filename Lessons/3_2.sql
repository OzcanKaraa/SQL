 Cross Join / JOINLER : Database tablolari ile iliskilendirme verileri,tablolari birlestirme.
-------------------------------------------------------------------------------

   select * from employees e
   join departments d on e.department_id = d.department_id 
   where (salary between 6000 and 10000)


	select department_name ,count(*)  from employees e
   join departments d on e.department_id = d.department_id 
   where (salary between 6000 and 10000)
   group by department_name 


   select department_name ,count(*)  from employees e
   join departments d on e.department_id = d.department_id 
   where (salary between 6000 and 10000)
   group by department_name 
   having count(*)>1


1-INNER JOIN : Her 2 kümede kesiþimli tablolar ekle göster
2-LEFT JOIN : Sol tablodaki her seyi göster sag tabloda bulundugu kadar goster
3-RIGHT JOIN : Sag tablodaki her seyi göster sol tabloda bulundugu kadar goster
4-FULL OUTER JOIN : Kayit cogaltir.

-- From dan sonra ilk tablo Left Join






