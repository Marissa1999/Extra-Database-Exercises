--Excerise3_Script.sql
--Name: Marissa Gonçalves
--Date: September 24, 2018


connect scott/tiger

set echo on;
set linesize 200;
set pagesize 50;


start "D:\Semester III\Database I\Exercises\Exercise3\indo_n2.sql";

spool "D:\Semester III\Database I\Exercises\Exercise3\Exercise3_Spool.txt";


--Question 1:

describe employee




--Question 2:

select fname, lname
from employee;





--Question 3:

select fname, lname, salary, deptid
from employee
order by fname, lname asc;




--Question 4:

alter session set nls_date_format = 'YYYY MM DD  HH:MI:SS AM';

select fname, lname, hiredate as "TO_CHAR (HIREDATE,'YYYYMM"
from employee
order by hiredate asc; 







--Question 5:

select fname, lname, hiredate as "TO_CHAR (HIREDATE, 'YYYYMM)"
from employee
order by hiredate desc; 







--Question 6:

column salary format $999,999
select lname, fname, salary
from employee;





--Question 7:

column salary format $999,999
select lname, fname, salary
from employee
order by salary desc;






--Question 8:

select lname, fname, salary
from employee
where salary between 50000 and 80000;







--Question 9:

select lname, fname, salary, commission
from employee
where commission is null;






--Question 10:

select lname, fname, salary, commission, (salary+commission) as "SALARY + COMMISSION"
from employee
where commission is not null;





--Question 11:

select lname as "Last Name", fname as "First Name", salary, commission, (salary+commission) as "Compensation"
from employee
where commission is not null;





--Question 12:

select lname as "Last Name", fname as "First Name", salary, commission, (salary+commission) as "Compensation"
from employee
where commission is not null
order by (salary+commission) asc;



spool off;

