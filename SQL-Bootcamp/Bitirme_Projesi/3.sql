-- INDEX OLUSTURMA
----------------------------------------------
CREATE INDEX idx_id ON sales (id);
CREATE INDEX idx_itemcode ON sales (itemcode);
CREATE INDEX idx_salesman ON sales (salesman);


--JOIN - INDEX AVANTAJI 
--------------------------------------------------------------------------------------------------------------------------------------
1-Join sirasinda Index kullanmak sorgu performansini hizini artirir.
2-Indexler verileri hizli sekilde aramak icin kullanilir ve birlestirme islemi icin gereken zamani azaltabilir.
3-Indexler verilerin daha hizli erisilebilir olmasini saglar ve sorgunun daha verimli sekilde calistirir.
4-Hýzlý veri eriþimi
5-Optimizasyon olanaklarý
6-Yüksek performans

EXPLAIN ANALYZE
SELECT *
FROM sales s 
JOIN item i   ON s.itemcode = i.itemcode ;


--------------------------------------------------------------------------------------------------------------------------------------
7- Fact ve Dimension tablolarýný Joinleyerek aþaðýdaki view lari
yaratin. 

a. Bölgeye göre toplam satýþ miktarý (region,
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



--------------------------------------------------------------------------------------------------------------------------------------
7- Fact ve Dimension tablolarýný Joinleyerek aþaðýdaki view lari
yaratin. 
7-b En çok satan ürünler (itemname, satilan_urun_sayisi) 

CREATE VIEW numberof_items sold AS
select   i.itemname as Products 
FROM  item i 
left JOIN sales s  ON i.itemcode = s.itemcode
group by  i.itemname
order by 1 asc

--------------------------------------------------------------------------------------------------------------------------------------
7- Fact ve Dimension tablolarýný Joinleyerek aþaðýdaki view lari
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

--------------------------------------------------------------------------------------------------------------------------------------
7- Fact ve Dimension tablolarýný Joinleyerek aþaðýdaki view lari yaratin. 
c. Satýþ temsilcisi performansý (salesman,region, toplam_satis)

CREATE VIEW Salesman_Performance AS
select  distinct  s.salesman as satis_temsilcisi, SUM(s.amount) AS toplam_satis
FROM  sales s , b.region , s.region
left JOIN branch b  ON b.branchnr = s.branchnr
group by  s.salesman , s.amount
order by 1 asc

create or replace view satis_temsilcisi_perform_view as 
select  s.salesman as satis_temsilcisi , b.region as bölge,  sum(s.amount) as toplam_satis
from sales s 
inner join branch b on b.branchnr = s.branchnr
group by s.salesman , b.region
order by s.salesman
 
--------------------------------------------------------------------------------------------------------------------------------------
7a. Bölgeye göre toplam satýþ miktarý (region, toplam_satis_miktari (amount))

create or replace view bolgeye_gore_toplam_satis_view as
select b.region as bolge, count(s.amount) as toplam_satis  from sales s 
left join branch b on s.branchnr = b.branchnr
group by bolge
having count(s.amount) > 0

    select * from bolgeye_gore_toplam_satis_view bgtsv 
--------------------------------------------------------------------------------------------------------------------------------------
-- 7b. En çok satan ürünler (itemname, satilan_urun_sayisi(amount)

create or replace view en_cok_satan_urun_view as 
select i.itemname as satilan_urun_adi, count(s.amount) as satilan_urun_sayisi   from sales s 
left join item i on i.itemcode = s.itemcode
group by satilan_urun_adi
order by satilan_urun_sayisi desc
--------------------------------------------------------------------------------------------------------------------------------------
--7c

create or replace view satis_temsilcisi_perform_view as 
select  s.salesman as satis_temsilcisi , b.region as bölge,  sum(s.amount) as toplam_satis
from sales s 
inner join branch b on b.branchnr = s.branchnr
group by s.salesman , b.region
order by s.salesman