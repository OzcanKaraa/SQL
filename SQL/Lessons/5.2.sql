/* 14.06.2023  Konu Anlatim II.Part */
--------------------------------------------------------------------------------------------------------------------------------------
	Functions (Fonksiyonlar) : 
	----------------------------
	1- Surekli olarak tekrarladigýmiz sql sorgularýna tek bir noktadan erismemizi saðlar.
	2- Fonksiyonlarin en onemli ozelligi Inputlar ve Outputlar. 2 input alip 1 output verme ..

	Syntax : Create or replace Function        --> Fonksiyon yaratma. (input tanimlama)
			 Returns integer as                --> Fonksiyon geri dondurme
			 $$                             
			 $$
			 language Sql 
	--------------------------------------------------------------------------------------------------------------------------------------
	-- Dogum Tarihleri 

	select date_part('year',hire_date), hire_date  from employees e 

	create or replace function yas_hesaplama(dogum_tarihi date)
	returns integer as                                        
	$$                                                          
	select extract(year from age(current_date, dogum_tarihi))  as sonuc                 
	$$     
	language sql
	--------------------------------------------------------------------------------------------------------------------------------------
	 -- Fonksiyonu cagirma
	select yas_hesaplama('2000-02-14') as yas 
	--------------------------------------------------------------------------------------------------------------------------------------
	-- 2 Tarih arasindaki yili ceviren hesaplayan fonksiyon
	select extract (year from age (timestamp '2023-06-14', timestamp '2019-09-01')) as years
	--------------------------------------------------------------------------------------------------------------------------------------
	--Calisilan Yillari bulma
	select first_name ,last_name ,hire_date ,yas_hesaplama(cast(hire_date as date)) as calisilan_yil  from  employees e 
	--------------------------------------------------------------------------------------------------------------------------------------
	--Tarih donusturme 
	select cast(hire_date as date) from employees e
	--------------------------------------------------------------------------------------------------------------------------------------
	  -- Dual 
      select 123 as sonuc                 
	 --------------------------------------------------------------------------------------------------------------------------------------