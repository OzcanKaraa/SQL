/*21.06.2023 Odev Cozumleri   HomeWork -5.sql Sorular */
--------------------------------------------------------------------------------------------------------------------------------------
1-Departments tablosundaki her departmama ait çalýþan sayýsýný ve ortalama maaþlarýný with Common Table Expression ile bulun.  
   Buldugunuz bu sonuctan, her departmanin ismini ve calýþan sayýsýni gosterin.
   Calisan sayisi 0 olan departmanlar için "Calisan Bulunamadý" ifadesini kullanýn. (Ipucu With CTE ve CASE WHEN Ifadelerini Kullanarak Yaziniz)


=>   	with tablom as 
        (
		select department_name as dept_ismi,count(e.employee_id) as calisan_sayisi ,avg(salary) as ortalama_maas from  departments d 
		left join employees e on d.department_id = e.department_id
		group by department_name
		)
        select department_name,ortalama_maas,

        case 
        		when calisan_sayisi = 0 then 'Calisan Bulunamadi'
        		else cast(calisan_sayisi as varchar) --Veri Donusumu
        end as calisan_bilgisi

        from tablom


        --------------------------------------------------------------------------------------------------------------------------------------
 2- Calýþanlarýn adlarýný ve yöneticilerinin adlarýný listeleyin. Yöneticisi olmayan çalýþanlar için "Yönetici Bulunamadý" ifadesini kullanýn.
  (Ipucu With CTE ve CASE WHEN Ifadelerini Kullanarak Yaziniz)


		 I.YOL : 
			  with yeni_tablo as                         -->  With amacý INNER Query
			(
				select employee_id,first_name,manager_id
				from employees e 
			)
			select y.employee_id , y.first_name,
			case 
				when a.first_name is null then 'Yonetici Bulunamadi'
				else a.first_name 
			end as yonetici
	
			from yeni_tablo y 
			left join yeni_tablo a on y.manager_id = a.employee_id


	  II.YOL : 
					with calisan_yonetici as
				(
				select 
				concat(e.first_name , ' ' , e.last_name) as calisan,
				concat(e2.first_name , ' ' , e2.last_name) as yonetici
				from employees e 
				left join employees e2 on e.manager_id = e2.employee_id
				),
	
				bilinmeyen as 
				(
				select calisan,yonetici, 
				case 
					when length(trim(yonetici)) = 0 then 'Yonetici Bulunamadi'
					else yonetici
				end as yonetici_tarama
				from calisan_yonetici
	
					)
				select calisan,yonetici,yonetici_tarama from bilinmeyen





  --------------------------------------------------------------------------------------------------------------------------------------
 3- HR þemasýndaki DEPARTMENTS tablosundaki departmanlarýn IDlerini ve o departmanda çalýþan toplam çalýþan sayýsýný listeleyen bir CTE oluþturun.
  Ek olarak,yeni bir CTE de ise çalýþan sayýsý 10 'dan fazla olan departmanlar için 'Büyük Departman', 
  5-10 arasýnda olan departmanlar için 'Orta Büyüklükte Departman' ve 
  5'ten az olan departmanlar için 'Küçük Departman' olarak bir etiket belirtin.
  Son olarak department_id, toplam_calisan_sayisi, departman_etiketi kolonlar ile sonucu yukarida en son olusturdugunuz CTE den okuyu




  --------------------------------------------------------------------------------------------------------------------------------------
  4- Bir çalýþanýn maaþinin calistigi departmanin ortalamsindan ne kadar fazla oldugunu donduren bir fonksiyon yaziniz. 
   Bu fonksiyon,employee ID yi input olarak alir,maasini departman ortalamasindan cikarip numerik bir deger dondurur. 
   Yarattiginiz bu fonksiyonu bir select querysi icinde cagirip employees tablosundaki her calisan icin 
   employee_id, isim, soyisim, maas ve buldugunuz maas farki degerini gosteriniz.



   --------------------------------------------------------------------------------------------------------------------------------------
