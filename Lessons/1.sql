/* 31.05.2023  */

 Data Manipulation Language( DML) /Data Manipulasyon Komutlari:
 RDMS Objeleri uzerinde yapilan islemler 
=> Select ,Insert ,Update,Delete , Truncate
--------------------------------------------------------------------------------------------------------------------------------------
Data Definition Language (DDL) / VeriTabani Manipulasyon Komutlari:
Veriler uzerinde yapilan islemler 
=> Create ,Alter ,Drop,Truncate
--------------------------------------------------------------------------------------------------------------------------------------
İlişkisel Veri Tabanı (RDMS):
Tekrar eden verileri tekillestirmek amaci ile yapilandirilan veritabani sistemleridir.
--------------------------------------------------------------------------------------------------------------------------------------
SORU1: DDL- DML arasindaki fark Nedir?? 

--------------------------------------------------------------------------------------------------------------------------------------
1- CREATE : Tablo olusturma

CREATE table hr.ilktablo(
    testKolonu NUMBER (5),
    isim VARCHAR2(50),
    sehir char (1)
)

CREATE table hr.ilktablo(
       plaka_kodu NUMBER (5) Not Null,
       sehir_adi VARCHAR2(50),
       bolge char (1)
)
--------------------------------------------------------------------------------------------------------------------------------------
2-DROP: :Tüm Tabloyu Verileri Silme islemi

drop TABLE hr.ilktablo   
drop table employees_bckp  
--------------------------------------------------------------------------------------------------------------------------------------
3-ALTER  :  Tabloyu degistirme

alter table hr.ilktablo modify (sehir_adi VARCHAR2 (30) not NULL)

--------------------------------------------------------------------------------------------------------------------------------------
4-TRUNCATE :  database kalır sadece tabloların tümünü siler.

truncate table ilktablo

--------------------------------------------------------------------------------------------------------------------------------------
CTAS : Silinen tabloyu tekrardan getirme işlemi

Create Table region_bckp as (Select * from regions) //region tablosu
Create Table employees_bckp as (Select * from employees) employees tablosu

--Tablonun içi boş olunacak veri olmayacak --
(Select * from regions where region_id = 0)
(Select * from regions where region_id = null)
(Select * from regions where 1 = 0)
(Select * from regions where region_id = 1) // 1.id gelecek
--------------------------------------------------------------------------------------------------------------------------------------
--Number tipi--
CREATE table hr.ilktablo(
       plaka_kodu NUMBER (5,2) Not Null,
)
  5,2->(123,45 kullanım)
--------------------------------------------------------------------------------------------------------------------------------------

5-INSERT INTO: Veri Ekleme

insert into hr.ilktablo(plaka_kodu ,sehir_adi, bolge) values (123.35 , 'Istanbul' , 'AV' )

SELECT * FROM hr.ilktablo 


--------------------------------------------------------------------------------------------------------------------------------------
DUAL :Oracle sistem tablosu .Matematiksel islem yapılabilir.

SELECT  123  FROM DUAL 
SELECT  123 + 12  FROM DUAL  
select (360+35) AS Sonuc from DUAL

SELECT '31/05/2023' AS Sonuc ,To_Date('31/05/2023','DD/MM/YYYY') AS Sonuc_Date from DUAL
SELECT '31/05/2023' AS Sonuc ,To_Timestamp('31/05/2023','DD/MM/YYYY') AS Sonuc_Date from DUAL
SELECT '31/05/2023' AS Sonuc ,SUBSTR(To_Date('31/05/2023','DD/MM/YYYY'),1,9) AS Sonuc_Date from DUAL
Select To_Char(To_Date)('24-MAR-1980','DD-MON-YYYY'),'DAY'from DUAL

Select 4*4 z "Sonuç" from dual 
Select * from dual;
desc dual;
Select sysdate from dual 
Select user from dual
--------------------------------------------------------------------------------------------------------------------------------------
--SONUC 1/0  SONUC_DATE 31/05/2023 --
SELECT SUBSTR('31/05/2023',2,3) AS Sonuc ,TO_CHAR(To_Date('31/05/2023','DD/MM/YYYY'),'DD/MM/YYYY') AS Sonuc_Date from DUAL

SELECT SUBSTR('31/05/2023',2,3) AS Sonuc ,TO_CHAR(To_Date('31/05/2023','DD/MM/YYYY'),'DD/MON/YYYY') AS Sonuc_Date from DUAL

SELECT SUBSTR('31/05/2023',2,3) AS Sonuc ,TO_CHAR(To_Date('31/05/2023','DD/MM/YYYY'),'DD/MON/YY') AS Sonuc_Date from DUAL

-- SELECT ------------------------------------------------------------------------------------------------------------------------------------
SELECT plaka_kodu as plk_kd , bolge as blg ,A.* FROM hr.ilktablo a

--------------------------------------------------------------------------------------------------------------------------------------