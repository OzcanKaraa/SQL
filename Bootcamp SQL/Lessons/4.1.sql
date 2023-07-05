/* 09.06.2023   Konu Anlatim */ 

--Subqueries : Bir Query ile baska bir query isleme alma.
--------------------------------------------------------------------------------------------------------------------------------------
--Single Row Sub Query Example : Tek satir sonuc donduren
  Ortalama uzerinde olanlari listelemeortalama uzerinde olanlari listeleme

	select * 
	from employees e
	where salary > (select avg(salary) as ortalama_maas from employees e)

	
	select *
	from employees e
	where salary < (select avg(salary) as ortalama_maas from employees e where salary=24000)

	--------------------------------------------------------------------------------------------------------------------------------------
	--Multi Row Sub Query Example : Birden fazla sonuc dondurme

		--Departmandaki calisan kisi sayisi,departmanlarda ortalama calisan kisi sayisindan yuksek olanlari listeleme

		IN     : Icinde olanlar
		NOT IN : Icinde olmayanlar
		--------------------------------------------------------------------------------------------------------------------------------------
		 -- departman id 100 den kucuk olanlar
		 select * from employees e 
         where department_id in ( select  department_id  from departments d where department_id <100)
		 --------------------------------------------------------------------------------------------------------------------------------------
		  -- departman id 100 den buyuk olanlar
		 select * from employees e 
         where department_id not in ( select  department_id  from departments d where department_id <100)
		  or department_id is Null
		  --------------------------------------------------------------------------------------------------------------------------------------

		  --Kendi departmaninin ortalamasinin uzerinde maas alan kisiler

		 select *  from  employees e 
		where salary > (select  avg(salary)
		from employees e 
		 where department_id = e.department_id)
		 --------------------------------------------------------------------------------------------------------------------------------------



		 UNION :Tablolari Birlestirme. Tekrar eden verileri gostermez.

		-- Employee Id 120 den kucuk olanlar  ve 1990 yilindan once ise girenler
				 select *  from employees e 
		where employee_id < 120
		union
		select * from employees e 
		where date_part('year',hire_date) <1990


		 UNION All : Tekrar edenleri de gosterir tumunu gosterir.

		 -- Employee Id 120 den kucuk olanlar  ve 1990 yilindan once ise girenler
				 select *  from employees e 
		where employee_id < 120
		union all
		select * from employees e 
		where date_part('year',hire_date) <1990



		--INNER QUERY - IC ICE QUERY
		--Employee Id 120 den kucuk olanlar  ve 1990 yilindan once ise girenler Departman isimleri VE MAASI 1000 DEN YUKSEK OLANLAR
		select first_name,last_name,department_name  from 
		(
		select *  from employees e 
		where employee_id < 120
		union 
		select * from employees e 
		where date_part('year',hire_date) <1990
		)A

		left join departments d  on d.department_id = a.department_id 
		Where a.salary > 10000 and a.manager_id is not null


