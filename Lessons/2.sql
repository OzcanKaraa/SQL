/* 02.06.2023  */

Distinct: Tekrarli olanlardan sadece birini gosterme.
** Primary key olan kayitlar distinc ile yapilsa da tek kayit olarak gelecektir.Tekrar edemez.
---------------------------------------------------------------------------------------------
TEK  DEGERLI FONKSIYONLAR (Single-Row Functions):

1- Sayisal Fonksiyonlar:
--------------------------
Trim : Bastaki-Sondaki bosluklari temizler
Power : Üs alma 
ABS : Mutlak deger
CEIL : Yukarı Yuvarlama (Tavan)
Floor : Aşağı Yuvarlama (Taban)
Round :  4>3,50>3 

=> select Power(2,2) from dual  //4 
=> select Power(2,2) as Sonuc from dual   //Sonuç : 4

=>select 
Power(2,5) as pwr_sonuc ,    
ABS(-22) as abs_sonuc ,      2
ceil(3.23) as ceil_sonuc ,    
floor(3.23) as floor_somuc ,  
Round(3.23) as round_sonuc ,  
Round(3.55) as round_sonuc2  
from dual

Çıktı : 
pwr_sonuc => 32
abs_sonuc => 22
ceil_sonuc => 4
floor_somuc => 3
round_sonuc => 3
round_sonuc2 => 4
Hata : `column ambiguousily defined` //1 sutundan birden fazla var.
----------------------------------------------------------------------------------------------------------


