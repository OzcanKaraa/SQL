
1-) "employees" tablosunda, her bir çalýþanýn employee id ye gore sýra numarasýný, adýný ve maaþýný gösteren bir sorgu yazýn.

2-) "employees" tablosunda, her bir çalýþanýn maasa gore azalan yoðun sýralama numarasýný (dense rank), adýný, maaþýný ve bir önceki ve bir sonraki çalýþanýn maaþýný gösteren bir sorgu yazýn.


3-) "departments" tablosu için bir görünüm (view) oluþturun. Bu görünümde, departmanýn adýný ve yöneticisinin adýný ve o deparmanda kac kisi calistigini gosterin.


4-) a- "employees" tablosunun bir kopyasini olusturun.
	b- "departments" tablosu için bir materyalize görünüm (materalized view) oluþturun. Bu görünümde, employees kopyasi tablosunu kullnarak departmanýn adýný ve yöneticisinin adýný ve o deparmanda kac kisi calistigini gosterin.
	c- bu adimda ise olusturdugunuz kopya employees tablosunda sectiginiz bir departmana 3 yeni kayit insert edin.
	d- materialized view i Select edip sonucun degisitp degismedigine bakin
	e- materizliaez view i refresh edin. ve sonucun degisip desigmedigine bakin
	
5-)  "employees" tablosu için bir fonksiyon oluþturun. Bu fonksiyon, bir çalýþanýn adýný, soyadini ve maaþýný 3 parametre olarak almalý ve maaþýný belirli bir yüzdeyle artýrmalýdýr. Artýrýlmýþ maaþý numberic olarak döndürmelidir.

6-) "employees" tablosunda, "first_name" sütununda "an" harflerinin ardýþýk olarak geçtiði çalýþanlarý gösteren bir sorgu yazýn. (use regexp)
