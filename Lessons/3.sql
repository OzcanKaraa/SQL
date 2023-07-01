/* 07.06.2023  */

=> Select hire_date , substring(cast(e.hire_date as Varchar),1,2) from employees e  


=> Select hire_date , substring(cast(e.hire_date as Varchar),1,5) from employees e 

=> Select hire_date , substring(cast('Test String' as Varchar),1,8) from employees e 


=> Select hire_date , substring(cast(hire_date  as Varchar),1,5),
  substring(to_char(hire_date,'dd/mm/yyyy'),1,5)
  from employees 


  ******
=> Select hire_date , substring(cast(hire_date  as Varchar),1,5),
  substring(to_char(hire_date,'dd/mm/yyyy'),1,5),
  to_char(123456.2,'999999.9')
  from employees 


=> Select  count(INSTR(last_name,' ')) from employees 
=> Select count(position (' ' in last_name)) from employees where last_name like '% %'
=>Select count(*) as bosluk from employees where last_name like '% %'
=> Select last_name, position (' ' in last_name) from employees where  position (' ' in last_name) > 0
=> Select  count(position (' ' in last_name)) from employees where  position (' ' in last_name) > 0






