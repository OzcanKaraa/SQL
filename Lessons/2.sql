/* 02.06.2023  */

Distinct: Tekrarli olanlardan sadece birini gosterme.
** Primary key olan kayitlar distinc ile yapilsa da tek kayit olarak gelecektir.Tekrar edemez.
---------------------------------------------------------------------------------------------
TEK  DEGERLI FONKSIYONLAR (Single-Row Functions):
-------------------------------------------------------

1- Sayisal Fonksiyonlar:
--------------------------
Power : �s alma 
ABS : Mutlak deger
CEIL : Yukar� Yuvarlama (Tavan)
Floor : A�a�� Yuvarlama (Taban)
Round :  4>3,50>3 yuvarlama

=> select Power(2,2) from dual  //4 
=> select Power(2,2) as Sonuc from dual   //Sonu� : 4

=>select 
Power(2,5) as pwr_sonuc ,    
ABS(-22) as abs_sonuc ,      2
ceil(3.23) as ceil_sonuc ,    
floor(3.23) as floor_somuc ,  
Round(3.23) as round_sonuc ,  
Round(3.55) as round_sonuc2  
from dual

��kt� : 
pwr_sonuc => 32
abs_sonuc => 22
ceil_sonuc => 4
floor_somuc => 3
round_sonuc => 3
round_sonuc2 => 4
Hata : `column ambiguousily defined` //1 sutundan birden fazla var.
----------------------------------------------------------------------------------------------------------

2-Metinsel Fonksiyonlar :
---------------------------
Trim : Sagdaki-Soldaki bosluklari temizler.
LTRIM:Sol taraftaki bo�luklar� temizler
RTRIM:Sol taraftaki bo�luklar� temizler
Concat:Sutunlar� birle�tirme.
RPAD: String sagina  0 ekle
LPAD: String soluna 0 ekle
UPPER : B�y�k harfe d�n��t�rme
LOWER : K���k harfe d�n��t�rme

CONCAT Kullan�m� :

select first_name , last_name ,CONCAT(first_name ,' ', last_name ) as ISIM_SOYISIM from employees  
---------------------------------------------------------------------------------------------------------------------------
RPAD / LPAD Kullan�m� :

select first_name , last_name ,rpad(first_name,6,'0')  as ISIM_SOYISIM from ozcan.employees //6 karakter olana kadar sagina 0 ekle

select first_name , last_name ,lpad(first_name,6,'0')  as ISIM_SOYISIM from ozcan.employees //6 karakter olana kadar soluna 0 ekle

select first_name , last_name ,lpad(1,4,'0')  from employees  // sola 1.karakter 4 karakter olana kadar basina 0 ekle

select first_name , last_name ,rpad(1,4,'0')  from employees  // sag�na 1.karakter 4 karakter olana kadar basina 0 ekle
-------------------------------------------------------------------------------------------------------------------------
Trim /Ltrim / Rtrim Kullan�m�: 
select first_name , last_name ,trim ('     sql      ')  from employees 
select first_name , last_name ,ltrim ('     sql  ')  from employees 
select first_name , last_name ,rtrim ('sql           ')  from employees 
-------------------------------------------------------------------------------------------------------------------------
Substring :  Stringin belli karakteri b�lmeyi par�alamay� sa�lar
select substring('Ozcan Kara',1,6)  ->//Ozcan (1.karakterden 6 karakter al) 
select substring('Ozcan Kara',5,9) -> // n Kara
----------------------------------------------------------------------------------------------------------------------------
�� ��E SQL SORGULAR :
--------------------------
Reverse : Tersine �evirme
Initcap: Ilk harfi b�y�k harfe d�n��t�rme
TRUNC: Ondalikli sayida k�s�rat� siler.

select first_name , last_name ,substring (trim ('  Ozcan '),1,3)  from employees  //Ilk 3 karakteri => Ozc
select first_name , last_name ,reverse(substring (trim ('  Ozcan  '),1,3))   from employees          => Czo
select first_name , last_name ,upper(reverse(substring (trim (' Ozcan    '),1,3)))   from employees  => CZO
select first_name , last_name ,Initcap(reverse(substring (trim ('  Ozcan  '),1,3)))   from employees  => Czo
select trunc(3.55)  => 3
-----------------------------------------------------------------------------------------------------------------------------
3- Tarihsel Fonksiyonlar :
---------------------------
Add_Months: Ay ekleme.
Last_Day: Ay�n son g�n� g�sterme.
Months_Between: Aylar arasinda ka� ay var .
Numtodsinretval :
Numtoysinretval :
Sysdate :  G�ncel Tarih saat
Systimestamp :
To_Timestamp :
To_Timestamp_TZ :
Trunc(date):

select hire_date,add_months(hire_date,2) from employees // Hire_Date s�tununa 2 ay ekleme

select hire_date,add_months(hire_date,2),last_day(hire_date),months_between(hire_date,add_months(hire_date,2)) from employees 


//Sysdate
select hire_date,add_months(hire_date,2),last_day(hire_date),months_between(hire_date,sysdate)) from employees 

select hire_date,add_months(hire_date,2),last_day(hire_date),trunc(abs(months_between(hire_date,sysdate))))  from employees 

select hire_date,add_months(hire_date,2),last_day(hire_date),round(abs(months_between(hire_date,sysdate))))  from employees 
-------------------------------------------------------------------------------------------------------------------------------------

Replace : Karakter De�i�tirme

select first_name , last_name ,replace(substring (trim ('  Sql Developer  '),1,15),'Sql' ,'Oracle') from employees  //Oracle Developer

select first_name , last_name ,replace(substring (trim ('  Sql  Sql Sql Sql   '),1,100),' ' ,'') from employees //SqlSqlSqlSql

-----------------------------------------------------------------------------------------------------------------------------------





