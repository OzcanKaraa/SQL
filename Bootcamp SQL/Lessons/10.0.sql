--12.07.2023 

--Triggerlar (Tetikleme)

Zamana bagli mesela insert etmeden once yapilmasi gerekeni yap. 
Bir islemi yaparken baska bir islem trigger ile event tetikleniyor.
Çok aktif kullanýlmýyor.

Dezavantajlari : Performansi dusurmesi.
Performansin sorun olmadigi usecaselerde avantajli.

Her triggerin icinde fonksiyon olmasina gerek yok.


--Tablo yaratma
create table employees_audit
(
action varchar(50),
employee_id int,
deleted_at timestamp,
old_data text
);

select * from employees_audit


-- Before Delete fonksiyon ile create information tablo ekle

create or replace function log_deletion_audit()
returns trigger as 
$$ 
begin 
	insert into employees_audit(action,employee_id,deleted_at,old_data)
	values ('SILINDI',old.employee_id,now(),row_to_json(old)::text);             --json :veriyi dosya tutma tipi
	return old;
end
$$
language plpqsqlS;

--After trigger ile event haline donusturme






