--Programmer: Marissa Gonçalves
--Date: September 10, 2018


start "D:\Semester III\Database I\Demos\Exercise1\indo_n2.sql"

set linesize 180;
set pagesize 60;

spool "D:\Semester III\Database I\Demos\Exercise1\Exercise1_Spool.txt"


--A.
		
SELECT * FROM employee;


--B. 

SELECT * FROM employee
WHERE commission > 15000;


--C:

SELECT * FROM employee
WHERE commission is null;


--D.

SELECT LNAME, FNAME 
FROM employee;


--E.

SELECT LNAME|| ', ' ||FNAME
FROM employee;



--F.

SELECT DISTINCT DEPTID
FROM employee;


--G.

SELECT LNAME, FNAME 
FROM employee
WHERE DEPTID IN (10, 30)
ORDER BY LNAME ASC;


--H.

SELECT LNAME as "Last Name", FNAME as "First Name" , (salary*10/100) as "Bonus"
FROM employee;



spool off




