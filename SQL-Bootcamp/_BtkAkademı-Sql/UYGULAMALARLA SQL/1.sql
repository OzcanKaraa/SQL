
Use ETRADE
SELECT ID, CUSTOMERNAME, CITY, BIRTHDATE, DISTRICT, GENDER
FROM 
CUSTOMERS



iNSERT iNTO CUSTOMERS 
(CUSTOMERNAME,CITY,BIRTHDATE,DISTRICT,GENDER)
Values
('Berfin Gokalp','Izmir',2000-12-2,'Karsiyaka','K')



UPDATE CUSTOMERS SET Nation='TR',AGE=35

Select DATEDIFF (YEAR,'1980-12-11','2023-06-27')

Select DATEDIFF (YEAR,'1980-12-11',GETDATE())

UPDATE CUSTOMERS SET Nation='TR',AGE= DATEDIFF (YEAR,'1980-12-11',GETDATE())




SELECT * FROM CUSTOMERS


Delete from CUSTOMERS

//	Truncate ilk olusturuldugumuiz haline  donusturulen ilk hale getirir.Delete gore daha hizli Tum verileri silen komut

//Delete id 1000 kayit var ise silindiginde  1001 den devam eder truncate gore daha yavas

//Truncate tablonun icini tamamen bosaltmak icin


Truncate from Customers