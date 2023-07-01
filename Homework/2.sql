/* 02/6/2023 Odev Soruları: Veritabanlarına ve SQL'e Giriş */
--------------------------------------------------------------------------------------------------------------------------------------
1-employees tablosunda çalışanların adını, soyadını ve tam adını ("first_name
last_name" formatında) listele

=> select first_name ,last_name, Concat(first_name ,' ',last_name) as Isim_Soyisim from employees 
--------------------------------------------------------------------------------------------------------------------------------------
2- employees tablosunda "last_name" sütununda boşluk karakteri olan çalışanların
sayısını bulun (Ipucu – Count ve INSRT fonksiyonlarini kullanin)

=>  select  count(INSTR(last_name,' ')) from employees 
=>  select count(*) as bosluk from employees where last_name like '% %'
=>  select count(position (' ' in last_name)) from employees where last_name like '% %'
=>  select last_name  as bosluk from employees where last_name like '% %'
--------------------------------------------------------------------------------------------------------------------------------------
3-employees tablosundaki "phone_number" sütunundaki tüm numaraların başına 1
tane "0" ekleyin (Ipucu Length ve LPAD fonksiyonlarini kullanin)

=> select   phone_number ,lpad(phone_number,13,'0')  from employees 
--------------------------------------------------------------------------------------------------------------------------------------
4-employees tablosundaki "email" sütununda geçen "gmail com" ifadesini
"yahoo com" ile değiştirin

=> select email ,replace(substring (trim ('  gmail.com  '),1,15),'gmail.com' ,'yahoo.com') as New_Email from employees
--------------------------------------------------------------------------------------------------------------------------------------
5-employees tablosundaki "email" sütununa her email icin "@gmail com"
ifadesini ekleyiniz

=>select email, trim(rpad(email ,20,'@gmail.com      '))  as New_Email from employees
 --------------------------------------------------------------------------------------------------------------------------------------
6-employees tablosundaki "hire_date" sütununda yer alan tarihleri "DD-MON-YY"
formatında listeleyin

=> 
--------------------------------------------------------------------------------------------------------------------------------------
7-employees tablosundaki "first_name" sütunundaki ilk üç karakteri alın

=> select  first_name ,substr( first_name,1,3) from employees 
=>select  first_name ,substring ( first_name,1,3) from employees 
--------------------------------------------------------------------------------------------------------------------------------------
8-employees tablosunda yer alan "job_id" sütununu ters çevirin

=> select  reverse( job_id  ) from employees 

--------------------------------------------------------------------------------------------------------------------------------------
9-employees tablosunda "job_id" sütununda "MAN" kelimesini içeren kayıtları
listeleyin

=> select job_id from employees where  job_id like 'MAN%'
--------------------------------------------------------------------------------------------------------------------------------------
10-employees tablosundaki "last_name" sütunundaki harflerin büyük harfe
dönüştürülmüş halini listeleyin

=> select  upper(last_name)  as sonuc_buyuk  from employees 
=> select  lower(last_name)  as sonuc_kucuk  from employees 
--------------------------------------------------------------------------------------------------------------------------------------
11- employees tablosundaki çalışanların işe alındığı tarihten itibaren geçen ay sayısını
bulun

=> 
--------------------------------------------------------------------------------------------------------------------------------------
12- employees tablosundaki çalışanların işe alındığı tarihten itibaren geçen gün sayısını
bulun

=>

--------------------------------------------------------------------------------------------------------------------------------------
13-employees tablosundaki çalışanların doğum tarihlerine göre yaşlarını bulun

=>
--------------------------------------------------------------------------------------------------------------------------------------
14-employees tablosundaki çalışanların doğum tarihlerini ve haftanın hangi gününde
doğduklarını bulun

=>
--------------------------------------------------------------------------------------------------------------------------------------
15- employees tablosundaki çalışanların maaşlarının ortalama değerini bulun

=> select round(avg(salary)) as ortalama_maas from employees 

--------------------------------------------------------------------------------------------------------------------------------------
16-employees tablosundaki çalışanların maaşlarının 2 üzeri alın

=> select salary, power(salary,2) as yeni_maas from  employees 

--------------------------------------------------------------------------------------------------------------------------------------
17- DIKKAT: Bu sorguyu backup aldiginiz bir tablo uzerinden calistirin 
    Soru:Yarattiginiz yeni tablo olan (CTAS ile) 
    "employees_bckp" tablosunda yer alan JOB_ID=
   IT_PROG çalışanların maaşlarını 500 artirin (Ipucu Update statement)

=>



--------------------------------------------------------------------------------------------------------------------------------------