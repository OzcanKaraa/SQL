-- INDEX OLUSTURMA
----------------------------------------------
CREATE INDEX idx_id ON sales (id);
CREATE INDEX idx_itemcode ON sales (itemcode);
CREATE INDEX idx_salesman ON sales (salesman);


--JOIN - INDEX AVANTAJI 
----------------------------------------
1-Join sirasinda Index kullanmak sorgu performansini hizini artirir.
2-Indexler verileri hizli sekilde aramak icin kullanilir ve birlestirme islemi icin gereken zamani azaltabilir.
3-Indexler verilerin daha hizli erisilebilir olmasini saglar ve sorgunun daha verimli sekilde calistirir.
4-H�zl� veri eri�imi
5-Optimizasyon olanaklar�
6-Y�ksek performans

	EXPLAIN ANALYZE
	SELECT *
	FROM sales s 
	JOIN item i   ON s.itemcode = i.itemcode ;


------------------------------------------------------
7- Fact ve Dimension tablolar�n� Joinleyerek a�a��daki view lari
yaratin. 

a. B�lgeye g�re toplam sat�� miktar� (region,
toplam_satis_miktari) 
CREATE VIEW total_sales_region AS
select  b.region as bolge ,SUM(s.amount) as toplam_tatis_miktari
FROM  branch b
left JOIN sales s  ON s.id = b.id
group by  b.region,s.amount


CREATE VIEW total_sales_region AS
SELECT msm.region as bolge ,SUM(s.amount) as toplam_tatis_miktari
FROM market_sales_master msm 
JOIN sales s  ON s.id = msm.id
group by  msm.region,s.amount



-----------------------------------------------------------
7- Fact ve Dimension tablolar�n� Joinleyerek a�a��daki view lari
yaratin. 
7-b En �ok satan �r�nler (itemname, satilan_urun_sayisi) 
  


  
-----------------------------------------------------------
7- Fact ve Dimension tablolar�n� Joinleyerek a�a��daki view lari
yaratin. 

CREATE VIEW sales_region AS
select b.region, SUM(msm.sales_amount) AS total_sales_amount
FROM market_sales_master msm 
JOIN branch b  ON msm.branchnr = b.branchnr
GROUP BY b.region;


select * from sales s 
select * from branch 
select * from brand 
select * from client c 
select * from market_sales_master msm 



CREATE VIEW total_sales_region AS
SELECT msm.branchnr
FROM market_sales_master msm 
JOIN branch b  ON b.branchnr = msm.branchnr
JOIN sales s  ON s.id = msm.id
GROUP BY  msm.branchnr
