/*14/6/2023   Odev Soruları: Veritabanlarına ve SQL'e Giriş   */
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1-Departments tablosundaki her departmama ait çalışan sayısını ve ortalama maaşlarını with Common Table Expression ile bulun.  Buldugunuz bu sonuctan, her departmanin ismini ve calışan sayısıni gosterin.
   Calisan sayisi 0 olan departmanlar için "Calisan Bulunamadı" ifadesini kullanın. (Ipucu With CTE ve CASE WHEN Ifadelerini Kullanarak Yaziniz)

=> 

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
2-Çalışanların adlarını ve yöneticilerinin adlarını listeleyin. Yöneticisi olmayan çalışanlar için "Yönetici Bulunamadı" ifadesini kullanın. (Ipucu With CTE ve CASE WHEN Ifadelerini Kullanarak Yaziniz)

=>

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
3-HR şemasındaki DEPARTMENTS tablosundaki departmanların IDlerini ve o departmanda çalışan toplam çalışan sayısını listeleyen bir CTE oluşturun. Ek olarak,yeni bir CTE de ise çalışan sayısı 10'dan fazla olan departmanlar için 'Büyük Departman', 5-10 arasında olan departmanlar için 'Orta Büyüklükte Departman' ve  5'ten az olan departmanlar için 'Küçük Departman' olarak bir etiket belirtin. Son olarak department_id, toplam_calisan_sayisi, departman_etiketi kolonlar ile sonucu yukarida en son olusturdugunuz CTE den okuyun

=>

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
4- Bir çalışanın maaşinin calistigi departmanin ortalamsindan ne kadar fazla oldugunu donduren bir fonksiyon yaziniz. Bu fonksiyon,employee ID yi input olarak alir,maasini departman ortalamasindan cikarip numerik bir deger dondurur. - Yarattiginiz bu fonksiyonu bir select querysi icinde cagirip employees tablosundaki her calisan icin employee_id, isim, soyisim, maas ve buldugunuz maas farki degerini gosteriniz.

=> 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
