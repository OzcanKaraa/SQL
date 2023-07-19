/*14/6/2023   Odev Soruları: Veritabanlarına ve SQL'e Giriş   */
--------------------------------------------------------------------------------------------------------------------------------------
1-Departments tablosundaki her departmama ait çalışan sayısını ve ortalama maaşlarını with Common Table Expression ile bulun.  
   Buldugunuz bu sonuctan, her departmanin ismini ve calışan sayısıni gosterin.
   Calisan sayisi 0 olan departmanlar için "Calisan Bulunamadı" ifadesini kullanın. (Ipucu With CTE ve CASE WHEN Ifadelerini Kullanarak Yaziniz)

   --YANLIS QUERY
=> 	select * from
	(
		with ortalama as 
	(
		select d.department_name as dept_ismi,count(*) as calisan_sayisi from employees e 
		left join departments d on d.department_id = e.department_id
		where salary > (select avg(salary) from employees e )
		group by department_name
			
		
		select coalesce(d.department_name  ,'Calisan Bulunamadi')
		from departments d 
		
	)
		select * from ortalama
		)a

--------------------------------------------------------------------------------------------------------------------------------------
2-Çalışanların adlarını ve yöneticilerinin adlarını listeleyin. Yöneticisi olmayan çalışanlar için "Yönetici Bulunamadı" ifadesini kullanın.
  (Ipucu With CTE ve CASE WHEN Ifadelerini Kullanarak Yaziniz)

=>
	with hesaplama as
	(
	select first_name,last_name,e.department_id , d.department_name ,e.salary
	from employees e 
	left join departments d on d.department_id = e.department_id
	where department_name='Executive' 
	)
	select * from hesaplama

--------------------------------------------------------------------------------------------------------------------------------------
3-HR şemasındaki DEPARTMENTS tablosundaki departmanların IDlerini ve o departmanda çalışan toplam çalışan sayısını listeleyen bir CTE oluşturun.
  Ek olarak,yeni bir CTE de iste çalışan sayısı 10 'dan fazla olan departmanlar için 'Büyük Departman', 
  5-10 arasında olan departmanlar için 'Orta Büyüklükte Departman' ve 
  5'ten az olan departmanlar için 'Küçük Departman' olarak bir etiket belirtin.
  Son olarak department_id, toplam_calisan_sayisi, departman_etiketi kolonlar ile sonucu yukarida en son olusturdugunuz CTE den okuyun

  **************************YAPAMADIM BI DAHA BAKKKK

=> 		select department_id , department_name from departments  ()
	with departman as 
	(
		select  d.department_id,count(j.job_id) from departments  d 
		left join job_history  j on d.department_id = j.department_id
		group by j.job_id, d.department_id
	)
	
			select d.department_id ,
		case 
			when department_id < 5 then 'Kucuk Departman'
			when department_id < 5 and  department_id > 10 then  'Orta Departman'
			when department_id > 10 then 'Buyuk Departman'
			else 'Calisan sayisi bilinmiyor'
		end as departman_calisan
		from departments d
		
				

--------------------------------------------------------------------------------------------------------------------------------------
4- Bir çalışanın maaşinin calistigi departmanin ortalamsindan ne kadar fazla oldugunu donduren bir fonksiyon yaziniz. 
   Bu fonksiyon,employee ID yi input olarak alir,maasini departman ortalamasindan cikarip numerik bir deger dondurur. 
   Yarattiginiz bu fonksiyonu bir select querysi icinde cagirip employees tablosundaki her calisan icin 
   employee_id, isim, soyisim, maas ve buldugunuz maas farki degerini gosteriniz.

    **************************YAPAMADIM BI DAHA BAKKKK
=> 	create or replace function maas_araligi(maas salary)
		returns integer as
		$$
		select avg(departman_name) as dept_ort from 
		$$
--------------------------------------------------------------------------------------------------------------------------------------
