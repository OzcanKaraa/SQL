/* 31.05.2023  INTRO */
--------------------------------------------------------------------------------------------------------------------------------------
Data Manipulation Language( DML) /Data Manipulasyon Komutlari:
 RDMS Objeleri uzerinde yapilan islemler .Tablo olusturma islemleri.
=> Select ,Insert ,Update,Delete , Truncate
--------------------------------------------------------------------------------------------------------------------------------------
Data Definition Language (DDL) / VeriTabani Manipulasyon Komutlari:
Veriler uzerinde yapilan islemler 
=> Create ,Alter ,Drop,Truncate
--------------------------------------------------------------------------------------------------------------------------------------
Ýliþkisel Veri Tabaný (RDMS):
Tekrar eden verileri tekillestirmek amaci ile yapilandirilan veritabani sistemleridir.
--------------------------------------------------------------------------------------------------------------------------------------
SORU1: DDL- DML arasindaki fark Nedir?? 
**DDL tablo olusturma islemleri ,DML tablo olusturulan veriler uzerinde islemler icin kullanilir.

--------------------------------------------------------------------------------------------------------------------------------------
SORU2: Truncate - Delete - DROP Farki Nelerdir??
 Truncate ,Tüm tablonun içindeki verileri siler.Tabloyu silmez.(DDL) (truncate departments_bckp)
 DROP , Database tablolari tumunu veriler tablolar dahil siler.(DDL)  (drop table employees_bckp)
 Delete ,satýr satýr siler (DML)
 --------------------------------------------------------------------------------------------------------------------------------------
SORU3:Where-Having Farklar Nelerdir ???
Where filtreleme islemi icin kullanilir 
Having   filtreleme islemi icin kullanilir  ama Group By ile kullanilir
--------------------------------------------------------------------------------------------------------------------------------------
Unique : Tabloda Benzersiz, Essiz,Tekil .. 
Unique Ornek: 2 Employee Id 100 olan tabloyu insert edilemez.
--------------------------------------------------------------------------------------------------------------------------------------
Normalizasyon - Denormalizasyon ??

Normalizasyon,Veri modellemesi ile tablolari normalize edip verinin tekrari engelleme.Memory-Performans verimliligi artirma icin onemli.
Denormalizasyon,Normalizasyonun tersi Query performansi artar daha hizli veriye ulasilir.
--------------------------------------------------------------------------------------------------------------------------------------
Select ,Veriyi cekmek icin kullanilir.
--------------------------------------------------------------------------------------------------------------------------------------
ACID NEDIR?? (Atomicity,Consistency,Isolation,Durability)

Database kendi icinde tutarli olabilmeleri icin uygulanan metotlardir.
--------------------------------------------------------------------------------------------------------------------------------------
Schema Nedir ??
Database uzerinde Soyut Katman yaratma.Tablolarla iliskilendirme.
--------------------------------------------------------------------------------------------------------------------------------------
Char - Varchar Farki Nedir??

Varchar Degisken
Char Ozel karakter.Degismez..
--------------------------------------------------------------------------------------------------------------------------------------
Select Top : Belirtilen sayida kaydi listeleme
--------------------------------------------------------------------------------------------------------------------------------------
delete from a where < 4  --veriyi girilen where clause gore satir satir siler.
--------------------------------------------------------------------------------------------------------------------------------------
truncate table a --veriyi file system seviyesinde tek islemde siler.
--------------------------------------------------------------------------------------------------------------------------------------
Normalizasyon: 
	Tekrarli verileri ortan kaldirma
	Memory kisminda daha az yer kaplar.
	Arama islemleri daha hizli yapma
	Islemlerde daha hizli sonuc alinir.
--------------------------------------------------------------------------------------------------------------------------------------
Foreign Key: (Ikincil Anahtar - Yabancil Anahtar)
Tekrarlanabilir.
Tablolara arasi iliskilendirildiginde diger tablolarda Birincil Anahtarlardir.
--------------------------------------------------------------------------------------------------------------------------------------


