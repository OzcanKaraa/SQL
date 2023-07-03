
--------------------------------------------------------------------------------------------------------------------------------------
Select MIN(TOTALPRICE),MAX(TOTALPRICE),COUNT(FICHENO),SUM(TOTALPRICE),AVG(TOTALPRICE) 
From SALES 
Where CITY='Ankara'

--------------------------------------------------------------------------------------------------------------------------------------
Select CITY,
MIN(TOTALPRICE) AS MINPRICE,
MAX(TOTALPRICE) AS MAXPRICE,
COUNT(FICHENO)  ROWCOUNT_,
SUM(TOTALPRICE)  TOTALPRICE,
AVG(TOTALPRICE) AVGPRICE
From SALES 
GROUP BY CITY
ORDER BY CITY

--------------------------------------------------------------------------------------------------------------------------------------

Select CITY,
MIN(TOTALPRICE) AS MINPRICE,
MAX(TOTALPRICE) AS MAXPRICE,
COUNT(FICHENO)  ROWCOUNT_,
SUM(TOTALPRICE)  TOTALPRICE,
AVG(TOTALPRICE) AVGPRICE
From SALES 
GROUP BY CITY
ORDER BY SUM(TOTALPRICE)

--------------------------------------------------------------------------------------------------------------------------------------

Select CITY,
SUM(TOTALPRICE)  TOTALPRICE
From SALES 
GROUP BY CITY
ORDER BY SUM(TOTALPRICE) DESC


--------------------------------------------------------------------------------------------------------------------------------------

Select TOP 10 CITY,
SUM(TOTALPRICE)  TOTALPRICE
From SALES 
GROUP BY CITY
ORDER BY SUM(TOTALPRICE) DESC
--------------------------------------------------------------------------------------------------------------------------------------
CONVERT : Veri tipi donusturme islemi

SELECT * , CONVERT(date,DATE_) FROM SALES WHERE CITY ='ANKARA' ORDER BY DATE_

SELECT CONVERT (date,'2019-01-01 08:07:24.000')        --2019-01-01

SELECT CONVERT (time,'2019-01-01 08:07:24.000')         --08:07:24.0000000

SELECT CONVERT (datetime,'2019-01-01 08:07:24.000')     --2019-01-01 08:07:24.000

UPDATE SALES SET  DATE2=CONVERT(DATE,DATE_)    --Update islemi

SELECT   *  FROM SALES WHERE CITY ='ANKARA' AND DATE2 = '2019-01-01'
--------------------------------------------------------------------------------------------------------------------------------------
--Bir magzanin Gunlere gore Satis Raporlari

SELECT  CONVERT(date,DATE_) AS DATE2 , *  FROM SALES WHERE CITY ='ANKARA'  ORDER BY DATE_

SELECT CITY , DATE2 , SUM(TOTALPRICE) AS TOTALPRICE
FROM SALES WHERE CITY = 'ANKARA'
GROUP BY CITY,DATE2,TOTALPRICE
ORDER BY CITY , DATE2

--------------------------------------------------------------------------------------------------------------------------------------
-- Bir gune gore magzalarin Satis Raporlari

select DATE2 , CITY , SUM(TOTALPRICE) AS TOTALPRICE from sales

WHERE DATE2 = '2019-01-01'

GROUP BY DATE2 , CITY ,TOTALPRICE

ORDER BY DATE2 , CITY


--EN COK SATAN 

select DATE2 , CITY , SUM(TOTALPRICE) AS TOTALPRICE from sales

WHERE DATE2 = '2019-01-01'

GROUP BY DATE2 , CITY ,TOTALPRICE

ORDER BY DATE2 ,SUM(TOTALPRICE) DESC
--------------------------------------------------------------------------------------------------------------------------------------

-- Sehirlerin Aylara gore Satis Raporlari

SELECT   CITY, MONTHNAME_ ,SUM(TOTALPRICE)  AS TOTALPRICE  FROM SALES
GROUP BY  CITY , MONTHNAME_
ORDER BY  CITY , MONTHNAME_ ,SUM(TOTALPRICE) DESC


SELECT DATEPART(MONTH,'2019-01-01')  

UPDATE SALES SET MONTHNAME_ = '01.OCAK' WHERE DATEPART(MONTH,DATE2)=1 

--------------------------------------------------------------------------------------------------------------------------------------
-- Urun Kategorlerine gore Satis Raporlari




--------------------------------------------------------------------------------------------------------------------------------------
-- Magzalarin Musteri Sayilarini Bulma


--------------------------------------------------------------------------------------------------------------------------------------
-- Belli Bir Ciro uzerinde satis yapan Magzalari Listeleme


--------------------------------------------------------------------------------------------------------------------------------------



	




