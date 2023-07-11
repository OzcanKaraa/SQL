/* 16.06.2023 Konu Anlatim Part-V */
1-WIEWS:

Views :Tablo uzerinden goruntu elde etme.
-- Database de duran Query tablo degil.Her calistiginda query calistirmasi 
-- View olusturup tekrardan yazip zaman kaybini onler.
-- Viewlar komplex querylileri tekrar yazilmasini onune gecer.
-- viewlar database de fazladan storage isgal etmez.Veri tutmaz.
-- source table update edilgi zaman , view her daim dogru ve en son en guncel tabloyu goterir.
-- Daha guvenli yapi olusturulur. (sadece view uzerinden access / erisim verilebilr.)
-- Refresh yoktur.Her zaman en son kaydi goruntuyu gosterir.

create view employee_departman_80 as
select * from employees 
where department_id = 80 and first_name ~ '^(A|J)$';

select  from employee_departman_80



create or replace view employee_departman_80 as
select * from employees 
where department_id = 80 and first_name ~ '^(A|J)';

select  from employee_departman_80




2-Materialized Views: 

--Database uzerinde tutulan tablo.
-- View 'a gore Performansi daha hizlidir.
--Refresh ile en gunceli gosterir.
-- Refresh kullanilarak fazla kod yazilmiyor.

Avantaj : Tablo haline donusturur Hizli performans icin.Veri tablo halindedir.
Dezavantaj :  diskte yer kaplar.

create materialized view  employee_departman_80_Materialized as
select * from employees 
where department_id = 80 and first_name ~ '^(A|J)';

select  from employee_departman_80_Materialized


--Refresh Materialized Views
refresh materialized view employee_departman_80_Materialized


--Views - Materialized Views Farki : 
Views refresh yoktur.Memory de yer kaplamaz.Tablo halinde saklanmaz.

Materialized Views ise Refresh ile en gunceli gosterir.
Materialized Views Tablo halinde saklanir ve Memory de yer kaplar.Ve Daha hizlidir.




