23 Haziran Odevleri : 

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1-) Belirli bir yöneticinin altýnda çalýþan çalýþanlarýn sayýsýný döndüren bir SQL fonksiyonu oluþturun. Fonksiyonun girdisi yönetici id'si,ciktisi ise integer bir deger olmalýdýr.

=>


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
2-) Bir çalýþanýn iþ unvanýný ve departman adýný döndüren bir SQL fonksiyonu oluþturun. Fonksiyonun input'u çalýþan id'si (employee_id) olmalýdýr.
	=>

Ipucu: Return value olarak birden fazla kolon istedigimiz icin fonksiyonumuzun icinde Returns Table yapisini kullanmamiz gerekir.
	
CREATE OR REPLACE FUNCTION calisan_unvan_dept_name(INT) 
RETURNS TABLE( #parametreadiniz character varying(35), #parametreadiniz character varying(35)) AS
$$
BEGIN
  RETURN QUERY (
  ###QUERYNIZ BURAYA. IKI Kolon veri dondurecek query i buraya yaziniz. Donen iki kolon yukaridaki Returns Table kismindaki #parametreadiniz diye placeholder koydugum yere yazacaginiz kolonlara atanacaktir.
  );
END;
$$
LANGUAGE plpgsql;


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
3-) Bir Common Table Expression ile (CTE) her departmanýn ortalama maaþýný hesaplayin. Hesapladiginiz bu ortalama maasi CTE yi kullanarak departman ismi ve o departmanin managerinin ismi ile birlestirecek bir select uzerinden gosteriniz.

=>





--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
4-) Employees tablosunda department_id sütunu için ismini kendinizin verdigi bir indeks oluþturun.

=>





--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
5-) Employees tablosunda first_name ve last_name sütunlarýna göre bir composite indeks oluþturun.

=>

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------