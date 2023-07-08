/*21.06.2023 Odev Cozumleri   HomeWork -5.sql Sorular */
--------------------------------------------------------------------------------------------------------------------------------------
1-Departments tablosundaki her departmama ait �al��an say�s�n� ve ortalama maa�lar�n� with Common Table Expression ile bulun.  
   Buldugunuz bu sonuctan, her departmanin ismini ve cal��an say�s�ni gosterin.
   Calisan sayisi 0 olan departmanlar i�in "Calisan Bulunamad�" ifadesini kullan�n. (Ipucu With CTE ve CASE WHEN Ifadelerini Kullanarak Yaziniz)


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
 2- Cal��anlar�n adlar�n� ve y�neticilerinin adlar�n� listeleyin. Y�neticisi olmayan �al��anlar i�in "Y�netici Bulunamad�" ifadesini kullan�n.
  (Ipucu With CTE ve CASE WHEN Ifadelerini Kullanarak Yaziniz)


		 I.YOL : 
			  with yeni_tablo as                         -->  With amac� INNER Query
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
 3- HR �emas�ndaki DEPARTMENTS tablosundaki departmanlar�n IDlerini ve o departmanda �al��an toplam �al��an say�s�n� listeleyen bir CTE olu�turun.
  Ek olarak,yeni bir CTE de ise �al��an say�s� 10 'dan fazla olan departmanlar i�in 'B�y�k Departman', 
  5-10 aras�nda olan departmanlar i�in 'Orta B�y�kl�kte Departman' ve 
  5'ten az olan departmanlar i�in 'K���k Departman' olarak bir etiket belirtin.
  Son olarak department_id, toplam_calisan_sayisi, departman_etiketi kolonlar ile sonucu yukarida en son olusturdugunuz CTE den okuyu




  --------------------------------------------------------------------------------------------------------------------------------------
  4- Bir �al��an�n maa�inin calistigi departmanin ortalamsindan ne kadar fazla oldugunu donduren bir fonksiyon yaziniz. 
   Bu fonksiyon,employee ID yi input olarak alir,maasini departman ortalamasindan cikarip numerik bir deger dondurur. 
   Yarattiginiz bu fonksiyonu bir select querysi icinde cagirip employees tablosundaki her calisan icin 
   employee_id, isim, soyisim, maas ve buldugunuz maas farki degerini gosteriniz.



   --------------------------------------------------------------------------------------------------------------------------------------
