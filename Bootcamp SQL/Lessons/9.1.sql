--05.07.2023  KONU ANLATIM

-- INDEX Query performasini artirma.
-- Indexi birden fazla sutun uzerinden  create edilir.
-- Create edilen index hizli ve performansli calismasini saglar.
--Cok sorgulanan tablolar uzerinden index yaratilir.
--Avantaj Hiz
--Dezavantaj Stored Procedures uzerinden Hiz yavaslatir

--Select ile hizi artirir.Hizli veriyi almayi saglar.
-- Itial ile yukleme insert islemlerinde ise Hizi yavaslatir.
--Index tum tablolarda kullanilmaz gerekli ve onemli tablolarda kullanilir.


--explain :Arka taraftaki islemler
--Analyze :Gelen sonuclari analiz etme komut

explain analyze
select * from employees e 
where first_name = 'Steve'


--CIKTI:
Seq Scan on employees e  (cost=0.00..3.34 rows=1 width=72) (actual time=0.031..0.032 rows=0 loops=1)
Filter: ((first_name)::text = 'Steve'::text)
Rows Removed by Filter: 107
Planning Time: 7.369 ms
Execution Time: 0.058 ms


