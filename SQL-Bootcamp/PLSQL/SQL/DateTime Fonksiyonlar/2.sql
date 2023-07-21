 Sistemin Anlik Tarih Saat bilgisini getiren fonksiyonlar :
--------------------------------------------------------
	Select 
	GETDATE() GETDATE,                                     => 2023-07-01 21:14:07.850
	SYSDATETIME() SYSDATETIME,							   => 2023-07-01 21:14:07.8527894
	SYSDATETIMEOFFSET() SYSDATETIMEOFFSET,                 => 2023-07-01 21:14:07.8527894 +03:00
	SYSUTCDATETIME() SYSUTCDATETIME,                       => 2023-07-01 18:14:07.8527894
	CURRENT_TIMESTAMP "CURRENT_TIMESTAMP",                 => 2023-07-01 21:14:07.850
	GETUTCDATE()  GETUTCDATE                               => 2023-07-01 18:14:07.850

--------------------------------------------------------------------------------------------------------------------------------------
    DatePart Fonksiyonu : Tarih saat icerisinde belli bölümleri parçalama fonksiyonu
------------------------
	
  Select 
	DATEPART(Year,GETDATE()) YEAR_ ,                              
	DATEPART(MONTH,GETDATE()) MONTH_ ,
	DATEPART(DAY,GETDATE()) DAY_ ,
	DATEPART(HOUR,GETDATE()) HOURS_ ,
	DATEPART(MINUTE,GETDATE()) MINUTE_ ,
	DATEPART(SECOND,GETDATE()) SECOND_ 
	DATEPART(MILLISECOND,GETDATE()) MILLISECOND_ ,
	DATEPART(DAYOFYEAR,GETDATE()) DAYOFYEAR_ 



   SET DATEFIRST 1 //Haftayi Pazartesinden baslatan komut

	Select 
	DATEPART(Year,'2023-07-01 22:51:43:489')YEAR_ ,                         => 2023
	DATEPART(MONTH,'2023-07-01 22:51:43:489')MONTH_ ,                       => 7
	DATEPART(DAY,'2023-07-01 22:51:43:489')DAY_ ,                           => 1
	DATEPART(HOUR,'2023-07-01 22:51:43:489')HOURS_ ,                        => 22 
	DATEPART(MINUTE,'2023-07-01 22:51:43:489')MINUTE_ ,                     => 51
	DATEPART(SECOND,'2023-07-01 22:51:43:489')SECOND_ ,                     => 43
	DATEPART(MILLISECOND,'2023-07-01 22:51:43:489')MILLISECOND_ ,           => 489
	DATEPART(DAYOFYEAR,'2023-07-01 22:51:43:489') DAYOFYEAR_ ,              => 182/365  Gün  
	DATEPART(DW,'2023-07-01 22:51:43:489')DW  ,                             => 6.Gun Cumartesi
	DATEPART(WEEK,'2023-07-01 22:51:43:489')WEEK_                           => 27/52 .HAFTA  
	
--------------------------------------------------------------------------------------------------------------------------------------
	DateName Fonksiyonu :  String  olarak getiren fonksiyon
-------------------------

  Select 
	DATENAME(Year,'2023-07-01 22:51:43:489')YEAR_ ,
	DATENAME(MONTH,'2023-07-01 22:51:43:489')MONTH_ , 
	DATENAME(DAY,'2023-07-01 22:51:43:489')DAY_ ,
	DATENAME(HOUR,'2023-07-01 22:51:43:489')HOURS_ ,
	DATENAME(MINUTE,'2023-07-01 22:51:43:489')MINUTE_ ,
	DATENAME(SECOND,'2023-07-01 22:51:43:489')SECOND_ ,
	DATENAME(MILLISECOND,'2023-07-01 22:51:43:489')MILLISECOND_ ,
	DATENAME(DAYOFYEAR,'2023-07-01 22:51:43:489') DAYOFYEAR_, 
	DATENAME(DW,'2023-07-01 22:51:43:489')DW,
	DATENAME(WEEK,'2023-07-01 22:51:43:489')WEEK_ 

--------------------------------------------------------------------------------------------------------------------------------------
   SET LANGUAGE turkish                =>Sql Turkce diline cevirme
   SET LANGUAGE english                =>//Sql Ingilizce diline cevirme
   SET DATEFIRST 1                     =>Haftayi Pazartesinden baslatan komut
 --------------------------------------------------------------------------------------------------------------------------------------
  DATE-TIMEFROMPARTS Fonksiyonlari :

    SELECT DATEFROMPARTS(2023,7,1)                           => 2023-07-01
	SELECT DATETIMEFROMPARTS(2023,12,31,23,59,59,476)        => 2023-12-31 23:59:59.477
	SELECT TIMEFROMPARTS(16,25,56,415,3)                     => 16:25:56.415

--------------------------------------------------------------------------------------------------------------------------------------
  DateDiff : 2 Tarih arasindaki fark icin kullanilir.
  GETDATE: Simdiki zaman

   SELECT DATEDIFF(YEAR,'2000-03-15',GETDATE())          => 23 YIL
   SELECT DATEDIFF(YEAR,'2000-03-15','2023-07-01')       => 23 YIL

   SELECT DATEDIFF(MONTH,'2000-03-15','2023-07-01')      => 280 AY
   SELECT DATEDIFF(DAY,'2000-03-15','2023-07-01')        => 8508 GUN

   SELECT DATEDIFF(HOUR,'2000-03-15','2023-07-01')       => 204192 SAAT
   SELECT DATEDIFF(MINUTE,'2000-03-15','2023-07-01')     => 12251520 DAKIKA
   SELECT DATEDIFF(WEEK,'2000-03-15','2023-07-01')       => 1215 HAFTA

   SELECT DATEDIFF(WEEK,'2000-03-15  23:49:34',GETDATE())   => 1215 HAFTA

 --------------------------------------------------------------------------------------------------------------------------------------
  DATEADD : Tarihe Yil/Ay/Gun ekleme

  SELECT DATEADD(YEAR,10,'2023-07-02')        =>2033-07-02 00:00:00.000 //10 YIL
  SELECT DATEADD(MONTH,10,'2023-07-02')       =>2024-05-02 00:00:00.000 //10 AY
  SELECT DATEADD(HOUR,10,'2023-07-02')        =>2023-07-02 10:00:00.000  //10 SAAT
  SELECT DATEADD(MINUTE,10,'2023-07-02')      =>2023-07-02 00:10:00.000   //10 DAKIKA

  SELECT DATEADD(MINUTE,10,DATEADD(MINUTE,10,'2023-07-02'))      => 2023-07-02 00:20:00.000

  SELECT DATEADD(SECOND,55,DATEADD(MINUTE,10,DATEADD(MINUTE,10,'2023-07-02')))    =>2023-07-02 00:20:55.000

  SELECT DATEADD(DAY,-10,'2023-07-02')     => (10 GUN CIKARMA)  2023-06-22 00:00:00.000

--------------------------------------------------------------------------------------------------------------------------------------
 IsDATE Fonksiyonu : Icine aldigi parametrenin tarih turunde olup olmadigi deger 1-0 SONUC dondurur
 IsNull :  Icine aldigi parametrenin Null olup olmadigi deger 1-0 SONUC dondurur

   SELECT ISDATE('2023-07-02')   => 1
   SELECT ISDATE('2023-13-02')   => 0
   SELECT ISDATE('2023-1A-02')   => 0
   SELECT ISDATE('20231202')    => 1
   --------------------------------------------------------------------------------------------------------------------------------------


    


