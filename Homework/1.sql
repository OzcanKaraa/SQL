/* 31/05/2023 Odev Soruları: Veritabanlarına ve SQL'e Giriş */

1- Employees tablosundaki iş unvanı 'Programcı' olan tüm çalışanların çalışan ID'sini,
adını ve soyadını getirin.




2-Departments tablosundaki konum ID'si 1700 olan tüm departmanların departman
ID'sini, departman adını ve yönetici ID'sini getirin.

3-Jobs tablosundaki maksimum maaşı $10,000'den büyük olan işlerin iş ID'sini, iş
unvanını ve maksimum maaşı getirin



DIKKAT! : Asagidaki sogulari yazmadan once CTAS kullanarak tablolarin back up ini olusturup
o kopya uzerinden testlerinizi yazin. Aksi halde orjinal tablo yapisini kaybedeceginizden
onumuzdeki derslerde yazacaginiz queryler calismayabilir!!!

Alttaki Soru 4 icin Ornek : create table employees_bckp as ( select * from
hr.employees) dedikten sonra employees_bckp tablsounda sutun adi degistirme islemini
yapin.



4- "employees" tablosundaki "job_id" sütununun adını "position_id" olarak değiştirin.
5- "employees" tablosundaki "salary" sütununun veri tipini NUMBER(10, 2)'den
NUMBER(12, 2)'ye değiştirin.
6-"departments" tablosundaki "department_name" sütununun adını "dept_name" olarak
değiştirin.

 Öncelikle database uzerinde ‘test_user’ isimli bir kullanici yaratin
7-⦁ "employees" tablosunda "full_name" sütununa SELECT iznini "test_user"
kullanıcısına verin.

⦁ "employees" tablosunda "salary" sütunundaki INSERT iznini "test_user"

⦁ Yeni bir sekmede test_user ile login olmayi deneyip employees de select ve
insert yapip yapamadiginizi test edin.

8-"employees" tablosunda "salary" sütunundaki INSERT iznini "test_user" kullanıcısından
geri alın. sonucu test edin

9-"employees" tablosundan yeni bir yedek tablo oluşturun ve bu tablo sadece
"employee_id", "first_name" ve "last_name" sütunlarını içersin ve sadece tablo yapisini
alsin. Icinde data / satir olmasin.

10- "employees" tablosunda yer alan "hire_date" adlı tarih sütunundaki yılların sadece son
iki hanesini alarak yeni bir table ve sütuna kaydeden bir CTAS sorgusu oluşturun.

11- Sehirler isimli 5 kolondan olusan bir tablo yaratin. Tablonun ozellikleri :
⦁ Plaka Kodu – 2 Karakter Sabit – Primary Key ve Bos olamaz
⦁ Sehir Adi – Degisken 20 Karakter – Bos olamaz
⦁ Yuz olcumu – Degisken 10 Karakter Sayi 2 Karatker Kusurat olabilir – Bos olabilir
⦁ Nufus – Degisken 10 Karakter Sayi – Bos olabilir
⦁ Bolge – 2 Karakter sabit – Bos olamaz 

Sorular:
⦁ Bu yarattiginiz tabloya 5 tane sehir biliginisi Insert statement kullanarak giriniz
⦁ Bu girilen 5 sehiri tek bir SQL komutunda girecek sekilde modifiye ediniz.
(Yani 5 kere Insert degil de 1 Insert statement la 5 satir veri girisi)
⦁ Girilen sehirlerden istediginiz 1 tanesini siliniz (ipucu Delete from statement
kullanarak)
⦁ Kalan tablonun CTAS ile backup ini yaratip , yarattiginiz tablonun icindeki veriyi
truncate ediniz



12-"SELECT" ifadesi ve "dual" tablosunu kullanarak ekrana "Merhaba, Dünya!" mesajını
yazdıran bir sorgu yazın. 


13-Oracle Dual tablosundan suanki system saat bilgisini cekiniz.

14-"dual" tablosunu kullanarak iki sayının toplamını hesaplayan bir sorgu yazın.


15-substr fonksiyonu ve dual tablosunu kullanarak "Merhaba, Dünya!" yazinin ilk 7
karakterini ayni satir uzerinde "Merhaba, Dünya!" yazinin yaninda ilkkelime kolonunda
gosteriniz.





