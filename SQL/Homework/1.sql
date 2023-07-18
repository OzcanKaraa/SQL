/* 31/05/2023 Odev Soruları: Veritabanlarına ve SQL'e Giriş */
------------------------------------------------------------------------------------------------------------------
1- Employees tablosundaki iş unvanı 'Programcı' olan tüm çalışanların çalışan ID'sini, adını ve soyadını getirin.

=> Select Employee_ID, First_Name ,Last_Name ,Job_ID from employees e Where  Job_ID = 'IT_PROG'
Select Count(*) from Employees
Select Count(First_Name) from Employees
Select distinct First_Name,Last_Name from Employees
------------------------------------------------------------------------------------------------------------------
2-Departments tablosundaki konum ID'si 1700 olan tüm departmanların departman ID'sini, departman adını ve yönetici ID'sini getirin.

=> Select * from departments   Where  Location_ID =1700

------------------------------------------------------------------------------------------------------------------
3-Jobs tablosundaki maksimum maaşı $10,000'den büyük olan işlerin iş ID'sini, iş unvanını ve maksimum maaşı getirin

=> Select job_id ,job_title ,max_salary  from jobs where max_salary > 10.000


------------------------------------------------------------------------------------------------------------------
    DIKKAT! : Asagidaki sogulari yazmadan once CTAS kullanarak tablolarin back up ini olusturup
    o kopya uzerinden testlerinizi yazin. Aksi halde orjinal tablo yapisini kaybedeceginizden
    onumuzdeki derslerde yazacaginiz queryler calismayabilir!!!

    Alttaki Soru 4 icin Ornek : create table employees_bckp as ( select * from
    hr.employees) dedikten sonra employees_bckp tablsounda sutun adi degistirme islemini
    yapin.

    create table departments_bckp as ( select * from
    departments )

    create table employees_bckp as ( select * from
    employees


4- "employees_bckp " tablosundaki "job_id" sütununun adını "position_id" olarak değiştirin.

=> alter table employees rename column job_id to position_id


------------------------------------------------------------------------------------------------------------------

5- "employees_bckp " tablosundaki "salary" sütununun veri tipini NUMBER(10, 2)'den NUMBER(12, 2)'ye değiştirin.*********

=> alter table employees_bckp alter column salary numeric(12,2)

------------------------------------------------------------------------------------------------------------------
6-"departments_bckp" tablosundaki "department_name" sütununun adını "dept_name" olarak değiştirin.

=> alter table departments_bckp rename column department_name to dept_name


------------------------------------------------------------------------------------------------------------------
    Öncelikle database uzerinde ‘test_user’ isimli bir kullanici yaratin
7-⦁ "employees" tablosunda "full_name" sütununa SELECT iznini "test_user" kullanıcısına verin.

⦁ "employees" tablosunda "salary" sütunundaki INSERT iznini "test_user"

⦁ Yeni bir sekmede test_user ile login olmayi deneyip employees de select ve insert yapip yapamadiginizi test edin.

=> create user test_user identified by 123456  ile tablo sifre olusturma


------------------------------------------------------------------------------------------------------------------
8-"employees" tablosunda "salary" sütunundaki INSERT iznini "test_user" kullanıcısından geri alın sonucu test edin

=> 


-------------------------------------------------------------------------------------------------------------------
9-"employees" tablosundan yeni bir yedek tablo oluşturun ve bu tablo sadece "employee_id","first_name" ve "last_name" sütunlarını içersin ve sadece tablo yapisini alsin. 
  Icinde data / satir olmasin.

=> select employee_id , first_name,last_name from employees_bckp where employee_id = 0



------------------------------------------------------------------------------------------------------------------
10- "employees" tablosunda yer alan "hire_date" adlı tarih sütunundaki yılların sadece son iki hanesini alarak yeni bir table ve sütuna kaydeden bir CTAS sorgusu oluşturun.

=> select hire_date ,substr(hire_date ,8,2),substr(hire_date ,1,50) from Employees

Create table employees_bckp as select substr(hire_date ,8,2) as HIRE_DATE  from Employees

select * from  employees_bckp 

select to_char(hire_date)  from Employees

select to_char(hire_date,'DD/MM/YYYY')  from Employees
select hire_date to_char(hire_date,'MM')  from Employees
select hire_date to_char(hire_date,'MM')  from AS AYLAR Employees AS CALISANLAR
select substr(hire_date ,8,2) as HIRE_DATE  from Employees

------------------------------------------------------------------------------------------------------------------
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

//Tablo Olusturma
=> create table sehirler 
(Plaka_Kodu char(2) not null primary Key,
Sehir_Adi varchar(20) not null,
Yuz_Olcumu Double(10) not null,
Nufus varchar(10), 
Bolge char(2) not null,
);

//Tabloya Kayit Ekleme
 INSERT INTO sehirler (Plaka_Kodu, Sehir_Adi, Yuz_Olcumu, Nufus, Bolge)
VALUES 
(34, 'Istanbl', '5.461', 15,46  ,'Marmara'), 
(35, 'Izmir',  '11.891 ', 4.462 ,'Ege'), 
(31, 'Hatay',  '5.403', 1,61 ,'Akdeniz'),
(06, 'Ankara', '24.521', 5,663 ,'Ic Anadolu'),
(01, 'Adana',  '13.844 ', 2.274 ,'Akdeniz');

//Tablodan 1 kayit silme 
delete  from sehirler where Plaka_Kodu =34


//Ctas ile Tablo yaratma
Create Table sehirler_backp as (Select * from sehirler)

//Truncate islemi 
truncate table sehirler 
------------------------------------------------------------------------------------------------------------------
12-"SELECT" ifadesi ve "dual" tablosunu kullanarak ekrana "Merhaba, Dünya!" mesajını
yazdıran bir sorgu yazın. 

=> Select 'Hello World!' from Dual
------------------------------------------------------------------------------------------------------------------
13-Oracle Dual tablosundan suanki system saat bilgisini cekiniz.

=> SELECT '30/06/2023' AS Sonuc ,To_Timestamp('31/05/2023','DD/MM/YYYY') AS Sonuc_Date from DUAL
------------------------------------------------------------------------------------------------------------------
14-"dual" tablosunu kullanarak iki sayının toplamını hesaplayan bir sorgu yazın.

=> Select (10+20) from Dual
------------------------------------------------------------------------------------------------------------------
15-substr fonksiyonu ve dual tablosunu kullanarak "Merhaba, Dünya!" yazinin ilk 7
karakterini ayni satir uzerinde "Merhaba, Dünya!" yazinin yaninda ilkkelime kolonunda
gosteriniz.

Select Substr('Hello World!',1,7) AS ilkelime from DUAL 
Select 'Hello World!' ,Substr('Hello World!',1,7) AS ilkelime from DUAL 
------------------------------------------------------------------------------------------------------------------




