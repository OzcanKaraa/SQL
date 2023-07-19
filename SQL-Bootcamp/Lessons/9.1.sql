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


--explain :Query calistirildiginda backend taraftaki islemleri gosterir.
--Analyze :Gelen sonuclari analiz etme komut

	explain analyze 
	select * from employees e 
	where first_name = 'Steven'


--CIKTI:
	Seq Scan on employees e  (cost=0.00..3.34 rows=1 width=72) (actual time=0.031..0.032 rows=0 loops=1)
	Filter: ((first_name)::text = 'Steve'::text)
	Rows Removed by Filter: 107
	Planning Time: 7.369 ms
	Execution Time: 0.058 ms



	  --Index Olusturma
	Syntax: create index index_isim on tablo_adi(sutun_adi)
	create index emp_idx on employees (first_name) 


	explain analyze 
	select * from burtay.market_sales 
	where BRAND = 'HAL' and STARTDATE >= '2017-01-01' and <='2017-02-01'

	create index idx_market_sales on market_sales (brand,startdate,enddate)


	explain analyze 
	select * from burtay.market_sales 
	where category_name1 = 'GIDA'

	create index idx_category on market_sales(category_name1)


	--TABLE SPACE : Database uzerinde verilerin tutuldugu dosya sistemleri.Schema tablolar tablespace de tutulur.





	CREATE TABLE ozcan.market_sales (
		id varchar(255) NULL,
		itemcode varchar(255) NULL,
		itemname varchar(255) NULL,
		ficheno varchar(255) NULL,
		date_ date NULL,
		amount varchar(255) NULL,
		price varchar(255) NULL,
		linenettotal varchar(255) NULL,
		linenet varchar(255) NULL,
		branchnr varchar(255) NULL,
		branch varchar(255) NULL,
		salesman varchar(255) NULL,
		city varchar(255) NULL,
		region varchar(255) NULL,
		latitude varchar(255) NULL,
		longitude varchar(255) NULL,
		clientcode varchar(255) NULL,
		clientname varchar(255) NULL,
		brandcode varchar(255) NULL,
		brand varchar(255) NULL,
		category_name1 varchar(255) NULL,
		category_name2 varchar(255) NULL,
		category_name3 varchar(255) NULL,
		startdate timestamp NULL,
		enddate timestamp NULL,
		gender varchar(255) NULL
	);
	CREATE INDEX idx_category ON ozcan.market_sales USING btree (category_name1);
	CREATE INDEX idx_market_sales ON ozcan.market_sales USING btree (brand, startdate, enddate);


