23 Haziran Odevleri : 

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1-) Belirli bir y�neticinin alt�nda �al��an �al��anlar�n say�s�n� d�nd�ren bir SQL fonksiyonu olu�turun. Fonksiyonun girdisi y�netici id'si,ciktisi ise integer bir deger olmal�d�r.

=>


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
2-) Bir �al��an�n i� unvan�n� ve departman ad�n� d�nd�ren bir SQL fonksiyonu olu�turun. Fonksiyonun input'u �al��an id'si (employee_id) olmal�d�r.
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
3-) Bir Common Table Expression ile (CTE) her departman�n ortalama maa��n� hesaplayin. Hesapladiginiz bu ortalama maasi CTE yi kullanarak departman ismi ve o departmanin managerinin ismi ile birlestirecek bir select uzerinden gosteriniz.

=>





--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
4-) Employees tablosunda department_id s�tunu i�in ismini kendinizin verdigi bir indeks olu�turun.

=>





--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
5-) Employees tablosunda first_name ve last_name s�tunlar�na g�re bir composite indeks olu�turun.

=>

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------