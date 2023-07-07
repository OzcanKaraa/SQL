 Cross Join / JOINLER : Database tablolari ile iliskilendirme verileri,tablolari birlestirme.Kartezyan carpimi.
-------------------------------------------------------------------------------

   select * from employees e
   join departments d on e.department_id = d.department_id 
   where (salary between 6000 and 10000)


	select department_name ,count(*)  from employees e
   join departments d on e.department_id = d.department_id 
   where (salary between 6000 and 10000)
   group by department_name 


   select department_name ,count(*)  from employees e
   join departments d on e.department_id = d.department_id 
   where (salary between 6000 and 10000)
   group by department_name 
   having count(*)>1


	1-INNER JOIN : Her 2 kümede kesiþimli tablolar ekle göster
	2-LEFT JOIN : Sol tablodaki her seyi göster sag tabloda bulundugu kadar goster
	3-RIGHT JOIN : Sag tablodaki her seyi göster sol tabloda bulundugu kadar goster
	4-FULL OUTER JOIN : Kayit cogaltir.

	-- From dan sonra ilk tablo Left Join

	Join Ornekleri :
	CREATE TABLE basket_a (
	 a INT PRIMARY KEY,
	 fruit_a VARCHAR (100) NOT NULL
	);
	CREATE TABLE basket_b (
	 b INT PRIMARY KEY,
	 fruit_b VARCHAR (100) NOT NULL
	);
	INSERT INTO basket_a (a, fruit_a)
	VALUES
	 (1, 'Apple'),
	 (2, 'Orange'),
	 (3, 'Banana'),
	 (4, 'Cucumber');
	INSERT INTO basket_b (b, fruit_b)
	VALUES
	 (1, 'Orange'),
	4
	 (2, 'Apple'),
	 (3, 'Watermelon'),
	 (4, 'Pear');
 
	select * from basket_a ba 
	select * from basket_b bb 
 
	select a,fruit_a, b, fruit_b from basket_a, basket_b -- Cross 
	JOIN
	SELECT
	 a,fruit_a, b, fruit_b
	FROM
	 basket_a
	INNER JOIN basket_b ON fruit_a = fruit_b;
	SELECT
	 a,fruit_a, b, fruit_b
	FROM
	 basket_a
	JOIN basket_b ON fruit_a = fruit_b;
	SELECT
	 a, fruit_a, b, fruit_b
	FROM
	 basket_a
	LEFT JOIN basket_b ON fruit_a = fruit_b;
	SELECT
	 a, fruit_a, b, fruit_b
	FROM
	 basket_a
	RIGHT JOIN basket_b ON fruit_a = fruit_b;
	SELECT
	 a, fruit_a, b, fruit_b
	FROM
	 basket_a
	FULL OUTER JOIN basket_b ON fruit_a = fruit_b;











