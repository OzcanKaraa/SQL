-- FACT-DIMENSION Tablosunun Avantajlari :
Veri analizi ve raporlama sürecini daha yönetilebilir ve performanslý hale getirmektir.
FACT-DIMENSION tablolarýný kullanmak verilerin daha yapýlandýrmýþ bir þekilde depolanmasýný ve analiz edilmesini saðlar.
Organize ve yönetilebilir hale getirme.


--Fact Tablosu
CREATE TABLE sales (
  ID SERIAL PRIMARY KEY,
  ITEMCODE VARCHAR(50),
  FICHENO VARCHAR(50),
  AMOUNT NUMERIC,
  PRICE NUMERIC,
  LINENETTOTAL NUMERIC,
  LINENET NUMERIC,
  BRANCHNR VARCHAR(50),
  SALESMAN VARCHAR(100),
  CLIENTCODE VARCHAR(50),
  CLIENTNAME VARCHAR(100),
  BRANDCODE VARCHAR(50),
  STARTDATE DATE,
  ENDDATE DATE
);

--DIMENSION Tablosu
INSERT INTO item (ID,itemcode, itemname, category_name1,category_name2, category_name3)   
SELECT DISTINCT id,itemcode, itemname, category_name1,category_name2, category_name3
FROM market_sales_master;

INSERT INTO client (ID,clientcode , clientname, gender)
SELECT DISTINCT id,clientcode, clientname, gender
FROM market_sales_master;

INSERT INTO branch  (ID,branchnr, branch, city, region, latitude,longitude) 
SELECT DISTINCT id,branchnr, branch, city, region, latitude,longitude
FROM market_sales_master;

INSERT INTO brand   (ID,brandcode, brand)
select DISTINCT id,brandcode, brand
FROM market_sales_master;

