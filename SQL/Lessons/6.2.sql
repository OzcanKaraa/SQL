/* 16.06.2023 Konu Anlatim Part-III */

REGEXP Fonksiyonlari Text arama search stringin icinde kalip arama

REGEXP_LIKE (~)
select *
from employees e  
where first_name ~ '^(A|J)'  --FirstName A veya J ile baslayanlari ara.
								--  ~ Regexp_Like isareti
								-- ^ Regexp Baslama 
							--	$ Regexp Bitis


--Telefon Numarasi Format
 select * from employees e 
where phone_number ~ '^\d{3}.\d{2}.\d{4}.\d{6}$'  --\d rakam


--Email Adresi .com ile bitsin ortasinda@ olsun kalip olarak arama



--isim  5 karakter olan ve soysimi 4 karakter olan

select *
from employees e  
where first_name ~ '^.{5}$' and last_name ~ '^.{4}$'      -- . Varchar

REGEXP_REPLACE
REGEXP_INSTR
REGEXP_SUBSTR








