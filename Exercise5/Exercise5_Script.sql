--Exercise5_Script.sql
--Name: Marissa Gonçalves
--Date: October 2, 2018


CONNECT hr/hr;
SET LINESIZE 180;
SET PAGESIZE 60;
SET ECHO ON;



START "D:\Marissa\hr_schema\hr_schema\hr_Script.sql"

SPOOL "D:\Semester III\Database I\Exercises\Exercise5\Exercise5_Spool.txt";







--A: Character: Upper, Lower, InitCap



--Question 1:

SELECT UPPER(last_name), LOWER(first_name), INITCAP(first_name||' '||last_name) 
FROM employees;





--Question 2:

SELECT *
FROM departments
ORDER BY department_name;





--Question 3:

SELECT *
FROM departments
ORDER BY LENGTH(department_name);





--Question 4:

SELECT department_name
FROM departments
HAVING LENGTH(department_name) = MAX(LENGTH(department_name))
GROUP BY department_name;





--Question 5:

SELECT last_name, first_name, LPAD(salary, 7, '$')
FROM employees;





--Question 6:

SELECT last_name, first_name, LPAD(salary, 7, '*')
FROM employees;










--B: Numeric Functions


--Question 7:

SELECT ROUND(5.55, 1), TRUNC(5.55), POWER(2,3), FLOOR(5.5), CEIL(5.5)
FROM dual;


DESCRIBE dual
SELECT * FROM dual;









--C: Dates


--Question 8:

SELECT SYSDATE
FROM dual;


SELECT TO_CHAR(SYSDATE, 'DY, MONTH DD, YYYY HH:MI:SS P.M.')
FROM dual;


SELECT TO_CHAR(SYSDATE, 'Day, MONTH DD, YYYY HH:MI:SS A.M.')
FROM dual;






--Question 9:

SELECT SYSDATE + 32
FROM dual;






--Question 10:

SELECT TO_DATE('8-NOV-15', 'DD-MON-YY') - SYSDATE
FROM dual;





--Question 11:

SELECT SYSDATE - TO_DATE('20-AUG-15', 'DD-MON-YY')
FROM dual;





--Question 12:

SELECT last_name, first_name, TRUNC((SYSDATE - hire_date) / 365.24) AS "Seniority"
FROM employees;









--D: Handling Null Values


--Question 13:

SELECT employee_id, salary, commission_pct,
salary * (1 + commission_pct / 100) AS "Total Compensation"
FROM employees;


SELECT employee_id, salary, commission_pct,
salary * (1 + NVL(commission_pct, 0) / 100) AS "Total Compensation"
FROM employees;





--Question 14:

SELECT employee_id, last_name, first_name,
NVL2(commission_pct, 'earns commission', 'no commission')
FROM employees;








--E: Conversion Functions




--Question 15:

SELECT employee_id, TO_CHAR(salary / 31, '$999,999.99') AS "Daily Salary"
FROM employees;





--Question 16:

SELECT last_name, first_name, TO_CHAR(hire_date, 'Month DD, YYYY') AS "Hire Date"
FROM employees;






--Question 17:

SELECT last_name, first_name, TO_CHAR(hire_date, 'DD Mon YYYY') AS "HireDate"
FROM employees;








SPOOL OFF;