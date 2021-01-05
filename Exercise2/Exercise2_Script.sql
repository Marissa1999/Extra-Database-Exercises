--Demo3
--Author: Marissa
--Date: September 17, 2018


connect scott/tiger


set linesize 180;
set pagesize 50;



start "D:\Semester III\Database I\Exercises\Exercise2\indo_n2.sql";


spool "D:\Semester III\Database I\Exercises\Exercise2\Exercise2_Spool.txt";


--Question 1:

describe student



--Question 2:

select * from major;



--Question 3:

select First as "First Name", Last as "Last Name", BirthDate as "BirthDay"
from student;



--Question 4:

select fname||', '||lname as "Full Name", hiredate as "HireDate"
from employee;



--Question 5:

select distinct building
from location;



--Question 6:

select fname, lname
from employee
where fname like 'S%';



--Question 7:

select fname, lname
from employee
where fname like 'S____';



--Question 8:

select fname, lname, commission
from employee
where not commission is null;

select fname, lname, '$'||commission||'.00' as "COMMISSION AMOUNT"
from employee
where not commission is null;




--Question 9:

select fname, lname, commission
from employee
where commission is null;




--Question 10:

select fname, lname, salary
from employee
where salary < 30000;




--Question 11:

select fname, lname, salary
from employee
where salary >= 50000 AND salary <= 82000;




--Question 12:

select first, last
from student
where studentid = 104;




--Question 13:

select courseid, section, endtime
from crssection
where endtime = '12:00';


spool off