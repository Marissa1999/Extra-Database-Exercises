--Excerise4_Script.sql
--Name: Marissa Gonçalves
--Date: September 24, 2018



connect hr/hr

set echo on;
set linesize 180;
set pagesize 40;


start 'D:\Marissa\hr_schema\hr_schema\hr_Script.sql';

spool "D:\Semester III\Database I\Exercises\Exercise4\Exercise4_Spool.txt";




--Question 1:

select table_name
from user_tables;





--Question 2:

describe employees





--Question 3:

select *
from employees;





--Question 4:

select *
from employees
where salary > 8000;





--Question 5:

select department_id, count(employee_id) as "Number of Employees"
from employees
group by department_id
order by department_id;






--Question 6:

select department_id, count(employee_id) as "Number of Employees"
from employees
where salary > 8000
group by department_id
order by department_id;





--Question 7:

select department_id, count(employee_id) as "Number of Employees"
from employees
where salary > 8000 and (department_id between 80 and 100)
group by department_id
order by department_id;





spool off;

