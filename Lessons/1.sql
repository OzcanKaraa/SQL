/* 31.05.2023  */

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
---------------------------------------------------------------------------------

2-DROP: :Tüm tabloyu Silme islemi 
drop TABLE hr.ilktablo   

----------------------------------------------------------------------------------


3-ALTER  :  Tabloyu degistirme

alter table hr.ilktablo modify (sehir_adi VARCHAR2 (30) not NULL)

-----------------------------------------------------------------------------------
4-TRUNCATE :  database kalır sadece tabloların tümünü siler.

truncate table ilktablo



CTAS : Silinen tabloyu tekrardan getirme işlemi
Create Table region_bckp as (Select * from regions)

select * from region_bckp


//Tablonun içi boş olunacak   veri olmayacak.

(Select * from regions where region_id = 0)
(Select * from regions where region_id = null)
(Select * from regions where 1 = 0)


(Select * from regions where region_id = 1) // 1.id gelecek


drop table region_bckp2 
Varchar (Varİable Char)



--Number tipi--
CREATE table hr.ilktablo(
       plaka_kodu NUMBER (5,2) Not Null,
)
  5,2->(123,45 kullanım)


5-INSERT INTO: Veri Ekleme

insert into hr.ilktablo(plaka_kodu ,sehir_adi, bolge) values (123.35 , 'Istanbul' , 'AV' )

SELECT * FROM hr.ilktablo 



DUAL :Oracle sistem tablosu .Matematiksel islem yapılabilir.


SELECT  123  FROM DUAL 
SELECT  123 + 12  FROM DUAL  
select (360+35) AS Sonuc from DUAL

SELECT '31/05/2023' AS Sonuc ,To_Date('31/05/2023','DD/MM/YYYY') AS Sonuc_Date from DUAL

SELECT '31/05/2023' AS Sonuc ,To_Timestamp('31/05/2023','DD/MM/YYYY') AS Sonuc_Date from DUAL

SELECT '31/05/2023' AS Sonuc ,SUBSTR(To_Date('31/05/2023','DD/MM/YYYY'),1,9) AS Sonuc_Date from DUAL


--SONUC 1/0  SONUC_DATE 31/05/2023 --
SELECT SUBSTR('31/05/2023',2,3) AS Sonuc ,TO_CHAR(To_Date('31/05/2023','DD/MM/YYYY'),'DD/MM/YYYY') AS Sonuc_Date from DUAL

SELECT SUBSTR('31/05/2023',2,3) AS Sonuc ,TO_CHAR(To_Date('31/05/2023','DD/MM/YYYY'),'DD/MON/YYYY') AS Sonuc_Date from DUAL

SELECT SUBSTR('31/05/2023',2,3) AS Sonuc ,TO_CHAR(To_Date('31/05/2023','DD/MM/YYYY'),'DD/MON/YY') AS Sonuc_Date from DUAL

-- select --
SELECT plaka_kodu as plk_kd , bolge as blg ,A.* FROM hr.ilktablo a