--Exercise8_Script.sql
--Name: Marissa Gonçalves
--Date: October 22, 2018


CONNECT scott/tiger;
SET LINESIZE 200;
SET PAGESIZE 50;
SET ECHO ON;




START "D:\Marissa\indo_n2.sql"


SPOOL "D:\Semester III\Database I\Exercises\Exercise8\Exercise8_Spool.txt";




--Question 1:

SELECT * FROM LOCATION;




--Question 2:

SELECT COUNT(roomid)
FROM LOCATION;





--Question 3:

SELECT * FROM EMPLOYEE;





--Question 4:

SELECT AVG(TRUNC((SYSDATE - HireDate) / 365.25)), MAX(TRUNC((SYSDATE - HireDate) / 365.25)), MIN(TRUNC((SYSDATE - HireDate) / 365.25))
FROM EMPLOYEE;





--Question 5:

SELECT * FROM DEPENDENT;





--Question 6:

SELECT EmployeeId, COUNT(EmployeeId)
FROM DEPENDENT
GROUP BY EmployeeId
HAVING COUNT(EmployeeId) >= 2;





--Question 7:


--a)

SELECT AVG(Commission)
FROM EMPLOYEE
WHERE Commission IS NOT NULL;


--b)

SELECT AVG(NVL(Commission, 0))
FROM EMPLOYEE;






--Question 8:

SELECT * FROM CRSSECTION;






--Question 9:

SELECT TermId, CourseId, SUM(MaxCount)
FROM CRSSECTION
GROUP BY TermId, CourseId;






--Question 10:

SELECT * FROM FACULTY;






--Question 11:

SELECT DeptId, COUNT(FacultyId)
FROM FACULTY
GROUP BY DeptId;





--Question 12:

SELECT DeptId, AVG(Salary)
FROM EMPLOYEE
GROUP BY DeptId;






--Question 13:

SELECT DeptId, AVG(Salary)
FROM EMPLOYEE
GROUP BY DeptId
HAVING AVG(Salary) >= 75000;






--Question 14:

COLUMN SalaryFormat FORMAT $999,999.99
SELECT EmployeeId, UPPER(Lname||' '||Fname), Salary SalaryFormat, Salary/100
FROM EMPLOYEE
ORDER BY Salary DESC;





--Question 15:

SELECT Lname, Fname, TO_CHAR(HireDate, 'DD-MON-YYYY')
FROM EMPLOYEE
ORDER BY Lname ASC;






--Question 16:

SELECT Lname, Fname, TO_CHAR(HireDate, 'YYYY')
FROM EMPLOYEE
ORDER BY Lname ASC;





--Question 17:

SELECT '####'||POWER(2, 10)
FROM DUAL;






--Question 18:

COLUMN Years FORMAT 999
SELECT EmployeeId, Lname, Fname, FLOOR((SYSDATE - HireDate)/ 365) Years
FROM EMPLOYEE;





--Question 19:

COLUMN Years FORMAT 999
SELECT EmployeeId, Lname, Fname, FLOOR((SYSDATE - HireDate)/ 365) Years
FROM EMPLOYEE
WHERE FLOOR((SYSDATE - HireDate)/ 365) >= 20;






--Question 20:

SELECT Fname, Lname, TO_CHAR(HireDate, 'MON')
FROM EMPLOYEE
WHERE TO_CHAR(HireDate, 'MON') = 'MAY';






SPOOL OFF;