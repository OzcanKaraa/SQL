/* 02.06.2023  */

Distinct: Tekrarli olanlardan sadece birini gosterme.
** Primary key olan kayitlar distinc ile yapilsa da tek kayit olarak gelecektir.Tekrar edemez.
---------------------------------------------------------------------------------------------
TEK  DEGERLI FONKSIYONLAR (Single-Row Functions):

1- Sayisal Fonksiyonlar:
--------------------------
Trim : Bastaki-Sondaki bosluklari temizler
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

LTRIM:
Concat:Sutunlar� birle�tirme.
RPAD: String sagina  0 ekle
LPAD: String soluna 0 ekle


//CONCAT Kullan�m� :
select first_name , last_name ,CONCAT(first_name ,' ', last_name ) as ISIM_SOYISIM from ozcan.employees  


//RPAD Kullan�m� :
select first_name , last_name ,rpad(first_name,6,'0')  as ISIM_SOYISIM from ozcan.employees //6 karakter olana kadar sagina 0 ekle

LPAD Kullan�m� :
select first_name , last_name ,lpad(first_name,6,'0')  as ISIM_SOYISIM from ozcan.employees //6 karakter olana kadar soluna 0 ekle

select first_name , last_name ,lpad(1,4,'0')  from ozcan.employees  // sola 1.karakter 4 karakter olana kadar basina 0 ekle

select first_name , last_name ,rpad(1,4,'0')  from ozcan.employees  // sag�na 1.karakter 4 karakter olana kadar basina 0 ekle