
1-) "employees" tablosunda, her bir �al��an�n employee id ye gore s�ra numaras�n�, ad�n� ve maa��n� g�steren bir sorgu yaz�n.

2-) "employees" tablosunda, her bir �al��an�n maasa gore azalan yo�un s�ralama numaras�n� (dense rank), ad�n�, maa��n� ve bir �nceki ve bir sonraki �al��an�n maa��n� g�steren bir sorgu yaz�n.


3-) "departments" tablosu i�in bir g�r�n�m (view) olu�turun. Bu g�r�n�mde, departman�n ad�n� ve y�neticisinin ad�n� ve o deparmanda kac kisi calistigini gosterin.


4-) a- "employees" tablosunun bir kopyasini olusturun.
	b- "departments" tablosu i�in bir materyalize g�r�n�m (materalized view) olu�turun. Bu g�r�n�mde, employees kopyasi tablosunu kullnarak departman�n ad�n� ve y�neticisinin ad�n� ve o deparmanda kac kisi calistigini gosterin.
	c- bu adimda ise olusturdugunuz kopya employees tablosunda sectiginiz bir departmana 3 yeni kayit insert edin.
	d- materialized view i Select edip sonucun degisitp degismedigine bakin
	e- materizliaez view i refresh edin. ve sonucun degisip desigmedigine bakin
	
5-)  "employees" tablosu i�in bir fonksiyon olu�turun. Bu fonksiyon, bir �al��an�n ad�n�, soyadini ve maa��n� 3 parametre olarak almal� ve maa��n� belirli bir y�zdeyle art�rmal�d�r. Art�r�lm�� maa�� numberic olarak d�nd�rmelidir.

6-) "employees" tablosunda, "first_name" s�tununda "an" harflerinin ard���k olarak ge�ti�i �al��anlar� g�steren bir sorgu yaz�n. (use regexp)
