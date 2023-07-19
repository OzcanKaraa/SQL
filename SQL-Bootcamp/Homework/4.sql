/*09/6/2023   Odev Soruları: Veritabanlarına ve SQL'e Giriş   */
--------------------------------------------------------------------------------------------------------------------------------------
1-IT departmanında çalışanları veya iş unvanında  "Programmer" geçen çalışanları bulun. (Like kullaniniz)

=> select * from departments d where department_name like 'IT%' or  department_name like 'Programmer

--------------------------------------------------------------------------------------------------------------------------------------
2-E-posta adresinin uzunlugu 5 karaKterden fazla olan ve telefon numarası 15 karakterden az olan kayitlari bulun.

=> ***
select email ,phone_number 
from employees e 
where LEN(email) > 5 and LEN(phone_number) < 15 
--------------------------------------------------------------------------------------------------------------------------------------
3-Soyadı "S" ile başlayan veya "son" ile biten çalışanları bulun

=>select * from employees e 
where last_name  like 'S%' or last_name like '%son'

--------------------------------------------------------------------------------------------------------------------------------------
4- En yüksek maaşa sahip çalışanların adını ve maaşını bulun


=> select first_name ,last_name ,salary  from employees e  where salary = (select max(salary) from employees e2 )

--------------------------------------------------------------------------------------------------------------------------------------
5-Calışanların sayısınin en fazla oldugu departmani hesaplayın ve Departman Name ini ve Caslisan Sayisini gosterin
(Dogru Cevap : Departman Name = Shippin / Calisan Sayisi = 45) *

=> ???
--------------------------------------------------------------------------------------------------------------------------------------
6-IT departmanında veya Satış (Sales) departmanında çalışanların listesini birleştirin.

=> 
	select department_name  from employees e 
	left join departments d on e.department_id = d.department_id 
	where department_name ='IT' OR department_name = 'SALES'


	select *  from departments d  
	where department_name = 'IT' 
	union 
	select *  from departments d   where department_name = 'SALES' 
--------------------------------------------------------------------------------------------------------------------------------------
7-Departmanı 'HR', 'IT' veya 'Sales' olan çalışanların listesini bulun (OR Kullanmadan yazin)
    ***
	=> select * from departments d  
	where department_name in ('HR', 'IT','Sales')


=> select * from employees e 
	left join departments d on d.department_id =e.department_id 
	where department_name in ('HR','IT','Sales')
--------------------------------------------------------------------------------------------------------------------------------------
8- Maaşı, kendi departmanının ortalama maaşından yüksek olan ve yöneticisi IT departmanında olmayan çalışanları bulun. *

=> select * from employees e 
   where salary > (select avg(salary) from employees e2 ) and job_id != 'IT'
--------------------------------------------------------------------------------------------------------------------------------------
9- Soyadı 'S' veya 'L' harfi ile başlayan ve e-posta adresi bulunmayan ya da '.com' ile biten çalışanları bulun

	=> select last_name,email  from employees e 
	where last_name like 'S%' or last_name like 'L%'
	and email is null or email like 'com%'
--------------------------------------------------------------------------------------------------------------------------------------
10-Satış departmanının ortalama maaşından daha yüksek maaşa sahip olanlar ile Finans departmanında herhangi bir manager pozisyonuna sahip olan çalışanları birlestirin. 
   Eger iki  kosula da uyan bir kayit varsa o kaydi sonuc listesinde birden  fazla gosterin. *

	=>  *****

--------------------------------------------------------------------------------------------------------------------------------------

