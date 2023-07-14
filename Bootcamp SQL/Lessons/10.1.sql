--12.07.2023 

--Triggerlar (Tetikleme) -2


--Insert Notifikasyon Trigger (New)


create or replace function  insert notifikasyon()
returns trigger as 
$$
begin
raise notice 'Yeni bir kayit eklendi,employee ID %',new employee_id
return new
end 
$$
language plpqsqlS;


--trigger ile iliskilendirme

create trigger insert_notifikasyon_trigger
after insert on emp_yedek
for each row -- her satir icin
execute function insert_notifikasyon()


insert into emp_yedek  (first_name,last_name) values ('Ali','Veli')
insert into emp_yedek  (employee_id,first_name,last_name) values ('230','Ali','Veli')
insert into emp_yedek  (employee_id,first_name,last_name) values ('245','Ali','Veli')

-----------------------------------------------------------------------------------------------------------------
SQL Partition : 
Tabloya partition yaratma.
1 milyon veride yil uzerinden tabloyu partition dosya sisteminde 1o yillik ise 10 a boler,
Veriyi derli toplu tutuyor.
islem daha hizli sonuclanir.
Tabloyu boler.