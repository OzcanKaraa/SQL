 JOINS :
 Birden fazla tablodan kayit sorgulamak icin,sorguda kullanilacak tablolarin kolonlari arasinda iliski (relation) kurarak sorgulamaya ,tablolar arasinda JOIN denir.

 JOIN TURLERI :
 ---------------------
 a- NATURAL Join
 b- INNER jOIN / JOIN
 c- OUTER Join
	1-LEFT Outer Join
	2-RIGHT Outer Join
	3-FULL Outer Join

d-Self Join    :Bir tablonun kendi kendine Joinlenmesi.
e-Cross Join   :Kartezyen Carpim.

--------------------------------------------------------------------------------------------------------------------------------------
a- NATURAL Join : 
Iki tablo arasinda Ayni isme sahip kolonlarin uzerinde yapilir.
Ayni  isme sahip kolonlarin degerleri esit olanlari listeler.
Kolon isimleri ayni fakat veri tipleri farkli ise sorgu calismaz.Hata verir.


Syntax : Select * from table1 NATURAL JOIN table2

Ansi Syntax:
select employee_id ,First_Name ,job_id ,job_title  from employees natural join jobs order by employee_id

Klasik (Geleneksel) Syntax :
select e.employee_id ,e.First_Name ,e.job_id ,j.job_title  from employees e ,jobs j where e.job_id  = j.job_id  order by employee_id
--------------------------------------------------------------------------------------------------------------------------------------
 b- INNER jOIN /JOIN :

 Birden cok Tabloda ortak sutunlarla birlestirme islemi.

 Ansi Syntax :
 -------------------
  3 tabloda birlestirm islemi

select e.employee_id ,e.last_name  ,d.department_id ,l.city 
from employees e 
inner join departments d on e.department_id = d.department_id 
inner join locations l on l.location_id  = d.location_id 
order by e.last_name 



Klasik (Geleneksel) Syntax : 
 -----------------------------
 3 tabloda birlestirm islemi

 select e.last_name ,e.employee_id ,e.department_id ,d.department_name ,l.city  
 from employees e ,departments d ,locations l 
 where e.department_id = d.department_id and l.location_id = d.location_id  
 order by e.last_name




--------------------------------------------------------------------------------------------------------------------------------------
 c- OUTER Join
	1-LEFT Outer Join :
		Tablolarin yazilis sirasina gore soldaki tabloyu tamami getirir sagdaki tabloda ise kesisen sutunlari getirir veya null olarak gelir.

	
 Ansi Syntax :
 -------------------
	select 
	r.region_id ,r.region_name,
	c.country_id  , c.country_name ,
	l.city 
	from regions r 
	left outer join countries c on r.region_id = c.region_id
	left outer join  locations l on c.country_id  = l.country_id
	-- and L.city isnull
	where l.city isnull
	order by 2,3,5
	

Klasik (Geleneksel) Syntax : (Oracle SQL)
 -----------------------------
 (+) isareti Eksik olan tarafa konulur.Tabloda karsiligi var ise getir, yoksa Null olarak getir.

	select r.region_id  ,r.region_name ,c.country_id ,c.country_name ,l.city 
	from regions r ,countries c ,locations l 
	where r.region_id = c.region_id (+)
	and c.country_id  = l.country_id(+) 
	and L.city isnull 
	order by 1,3,5

	--------------------------------------------------------------------------------------------------------------------------------------
 c- OUTER Join
	2-RIGHT Outer Join : Sagdaki tabloyu listele soldaki tabloda karsiligi varsa listele yok ise Null yaz.

	 Ansi Syntax :
 --------------------------------------
	select 
	e.employee_id ,e.last_name ,e.salary ,
	d.department_id
	from employees e 
	right outer join departments d 
	on e.department_id = d.department_id 



	Klasik (Geleneksel) Syntax : (Oracle SQL)
 ------------------------------------------------
	 select 
	e.employee_id ,e.last_name ,e.salary ,
	d.department_id ,d.department_name 
	from employees e ,departments d 
	where e.department_id(+) = d.department_id 
	and salary is null
	order by 1,2,3

	--------------------------------------------------------------------------------------------------------------------------------------
	 c- OUTER Join
	   3-FULL Outer Join :
	     
		 Right Join && Left Join birlikte kullanilmasi.
		 2 tabloyuda listeleme.



		Ansi Syntax :
 --------------------------------------
		 select 
		e.employee_id "emp id",
		e.last_name "Last Name" ,
		e.salary  "Maas" ,
		d.department_id "depart id",
		d.department_name "depart name"
		from employees e 
		full outer join departments d 
		on e.department_id  = d.department_id 
		order by 4                                   -->4.Kolon Departman Id gore siralama 








	Klasik (Geleneksel) Syntax : (Oracle SQL)
 ------------------------------------------------
      -- FULL JOIN = LEFT JOIN + RIGHT JOIN


		        --LEFT JOIN
		select 
		e.employee_id "emp id",
		e.last_name "Last Name" ,
		e.salary  "Maas" ,
		d.department_id "depart id",
		d.department_name "depart name"
		from employees e ,departments d 
		where d.department_id =e.department_id(+)
		union
		        --RIGHT JOIN
		select 
		e.employee_id "emp id",
		e.last_name "Last Name" ,
		e.salary  "Maas" ,
		d.department_id "depart id",
		d.department_name "depart name"
		from employees e ,departments d 
		where d.department_id(+) =e.department_id

		--------------------------------------------------------------------------------------------------------------------------------------
		d-Self Join :
		
		Bir tablonun kendini joinlemesi.
		Kendi kendine Foreign islemi vardir.


			Ansi Syntax :
	 --------------------------------------
	 select
	concat(e.first_name ,e.last_name) "E isim soyisim",e.manager_id ,
	e2.first_name ||''|| e2.last_name "E2 isim soyisim"
	from employees e
	inner join employees e2 on e.manager_id  = e2.employee_id 
	order by 1


 		Klasik (Geleneksel) Syntax : (Oracle SQL) 
 --------------------------------------------------
	 select
	concat(e.first_name ,e.last_name) "E isim soyisim",e.manager_id ,
	e2.first_name ||''|| e2.last_name "E2 isim soyisim"
	from employees e ,employees e2
	where e.employee_id = e2.employee_id 
	order by 1

	--------------------------------------------------------------------------------------------------------------------------------------
	e-Cross Join : 
		Matematik Kartezyen Carpim

	s(A)=n  s(B)=m  s(AxB)=n*m


		Klasik (Geleneksel) Syntax : (Oracle SQL) 
 --------------------------------------------------
	select last_name ,department_name 
	from employees ,departments  



	Ansi Syntax :
	 --------------------------------------
	 select last_name ,department_name 
	from employees cross join departments 

	--------------------------------------------------------------------------------------------------------------------------------------
